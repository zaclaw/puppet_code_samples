class profile::wsus {

  class {'wsus_client':
    server_url             => 'http://192.168.0.90:8530',
    auto_update_option     => 'Scheduled',
    scheduled_install_day  => 'Sunday',
    scheduled_install_hour => 2,
    enable_status_server   => true,
  }

}
