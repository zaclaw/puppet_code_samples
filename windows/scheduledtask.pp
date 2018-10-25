class profile::scheduledtask {

  scheduled_task {'run script':
    ensure  => present,
    name    => 'test task',
    enabled => true,
    command => 'c:\\temp\\scheduled_task.ps1',
    trigger => {
      schedule   => 'daily',
      start_time => '15:30'
    },
  }

}
