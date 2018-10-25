class profile::joindomain (
  $dcip,
  $domainname,
  $adminuser,
  $adminpassword,
) {

  dsc_xdnsserveraddress {'DCDNS':
    dsc_address        => $dcip,
    dsc_interfacealias => 'Ethernet',
    dsc_addressfamily  => 'IPv4',
  }

  dsc_xcomputer {$facts['hostname']:
    dsc_name       => $facts['hostname'],
    dsc_domainname => '$domainname',
    dsc_credential => {
      user     => $adminuser,
      password => $adminpassword
    },
    require => Dsc_xdnsserveraddress['DCDNS'],
  }

  reboot {'domainjoin-reboot':
    subscribe => Dsc_xcomputer["$facts['hostname']"],
  }

}
