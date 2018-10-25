class profile::wsus (
  $server_url,
) {

  class {'wsus_client':
    server_url             => $server_url,
    auto_update_option     => 'Scheduled',
    scheduled_install_day  => 'Sunday',
    scheduled_install_hour => 2,
    enable_status_server   => true,
  }

}
