class profile::domainuser(
  $password,
  $domainname,
){
    dsc_xaduser {'test1':
      dsc_ensure     => present,
      dsc_domainname => $domainname,
      dsc_username   => 'test1',
      dsc_password   => {
        'user'     => 'test1',
        'password' => Sensitive($password)
      },
    }

    dsc_xaduser {'test2':
      dsc_ensure     => present,
      dsc_domainname => $domainname,
      dsc_username   => 'test2',
      dsc_password   => {
        'user'     => 'test2',
        'password' => Sensitive($password)
      },
    }
}
