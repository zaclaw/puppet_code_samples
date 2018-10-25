class profile::iis(
  $indexhtmlpath,
) {
    $iis_features = ['Web-WebServer','Web-Scripting-Tools']
    iis_feature { $iis_features:
      ensure => 'present',
    } ->

    file {'c:\\inetpub\\\wwwroot\index.html':
      ensure  => file,
      source  => $indexhtmlpath,
    }

    service {'WAS':
      ensure => running,
    }

    service {'W3SVC':
      ensure => running,
    }
}
