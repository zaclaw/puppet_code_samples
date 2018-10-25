class profile::fw {

  case $facts['os']['family']{
    'Windows': {
      dsc_xfirewall{'test':
        dsc_ensure        => 'present',
        dsc_enabled       => 'True',
        dsc_name          => 'testrule',
        dsc_displayname   => 'Test Rule',
        dsc_direction     => 'Inbound',
        dsc_remoteport    => '55555',
        dsc_localport     => '55555',
        dsc_protocol      => 'tcp',
        dsc_description   => 'Test Rule',
        dsc_interfacetype => 'Any',
      }
    }
    default: {
      notify{'os not supported':}
    }
  }

}
