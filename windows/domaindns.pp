class profile::domaindns(
  String $dnsip,
){
  # sets the DNS address of the domain controller
  dsc_xdnsserveraddress{'windc':
    #dsc_ensure         => present,
    dsc_address        => $dnsip,
    dsc_interfacealias => 'Ethernet',
    dsc_addressfamily  => 'IPv4',
  }
}
