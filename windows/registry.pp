class profile::registry {
  
  # IE advanced security config for admins
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled':
    ensure => present,
    type   => 'dword',
    data   => '00000000',
    notify => Reboot['post_base_install'],
  }

  # IE advanced security config for users
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled':
    ensure => present,
    type   => 'dword',
    data   => '00000000',
    notify => Reboot['post_base_install'],
  }

  #shutdown even tracker
  registry_key {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Reliability':
    ensure => present,
  }

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Reliability\ShutDownReasonOn':
    ensure => present,
    type   => 'dword',
    data   => '00000000',
  }

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Reliability\ShutDownReasonUI':
    ensure => present,
    type   => 'dword',
    data   => '00000000',
  }
}
