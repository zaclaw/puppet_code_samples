class profile::windc (
  $domainname,
  $adminuser,
  $adminpassword,
  $safemodeuser,
  $safemodepassword,
) {

  $ntdspath = 'C:\NTDS'

  file {$ntdspath:
    ensure => directory,
  }

  windowsfeature {'Active Directory Domain Services':
    ensure                 => present,
    name                   => 'AD-Domain-Services',
    installmanagementtools => true,
    notify                 => Service['adws'],
  }

  windowsfeature {'DNS':
    name   => 'DNS',
    ensure => present,
  }

  service {'adws':
    ensure => running,
    enable => true,
  }

  dsc_xADDomain {$domainname:
    dsc_domainname                    => $domainname,
    dsc_domainadministratorcredential => {
      'user'     => $adminuser,
      'password' => $adminpassword,
    },
    dsc_safemodeadministratorpassword => {
      'user'     => $safemodeuser,
      'password' => $safemodepassword,
    },
    dsc_databasepath                  => $ntdspath,
    dsc_logpath                       => $ntdspath,
    require                           => [Windowsfeature['Active Directory Domain Services'], File['C:\NTDS'], Windowsfeature['DNS']],
  }

  reboot {'post_DC_setup':
    subscribe => Dsc_xADDomain["$domainname"],
  }

}
