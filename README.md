# Puppet Code Samples

This repo contains some base samples for Puppet code. The name of the classes may not match your structure and hence will need to be renamed. Feel free to chop and change the code accordingly to fit your environment.
---
## Forge Modules Required
The following Puppet Forge Modules are required
* puppetlabs/concat
* puppetlabs/stdlib
* puppetlabs/iis
* puppetlabs/powershell
* ayohrling/local_security_policy
* puppetlabs/acl
* puppetlabs/registry
* puppetlabs/dsc
* puppetlabs/reboot
* puppet/windowsfeature
* puppetlabs/wsus_client
* puppetlabs/sqlserver &ast requires Puppet Enterprise License
---
### Windows Samples
* [Firewall Rules](../windows/fw.pp)
* [Set Registry Keys](../windows/registry.pp)
* [Setup Domain Controller](../windows/windc.pp)
* [Join host to domain](../windows/joindomain.pp)
* [Create Domain user](../windows/domainuser.pp)
* [Add domain user to local admin group](../windows/localdomain.pp)
* [Set host DNS to Domain Controller](../windows/domaindns.pp)
* [Scheduled Task](../windows/scheduledtask.pp)
* [Configure WSUS agent](../windows/wsus.pp)
* [Install and configure IIS](..windows/iis.pp)
* [Install and configure MSSQL](../windows/mssql.pp)

---
### Linux Samples
TBA
---