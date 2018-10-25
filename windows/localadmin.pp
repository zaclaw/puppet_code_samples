class profile::localadmin {

  group {'Local Administrators':
    ensure          => present,
    name            => 'Administrators',
    auth_membership => false,
    members         => ['TEST\test1','TEST\test2'],
  }

}
