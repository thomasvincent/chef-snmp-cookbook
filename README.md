# SNMPd Cookbook

This cookbook installs and configures the SNMPd daemon on Linux, Windows, Solaris, and macOS servers. It provides resources and recipes for managing the SNMPd package, configuration, service, and various other aspects of the daemon.

## Requirements

- Chef 12.0 or later
- A Linux, Windows, Solaris, or macOS operating system

## Platform Support

The following platforms have been tested:

- CentOS 6.5+
- Ubuntu 14.04+
- Windows 2012 R2+
- Solaris 11+
- macOS 10.12+

Other Debian- and Red Hat-based Linux platforms should also work, but have not been tested.

## Resources

This cookbook provides the following resources:

- `snmpd_install`: installs the SNMPd package
- `snmpd_config`: manages the SNMPd configuration file
- `snmpd_service`: manages the SNMPd service (e.g. start, stop, restart)
- `snmpd_user`: manages SNMP users and their access rights
- `snmpd_notification`: manages SNMP notifications (e.g. traps and informs)
- `snmpd_agentx_subagent`: installs and manages SNMP subagents using the AgentX protocol
- `snmpd_extensions`: manages SNMP extensions (e.g. custom MIBs or scripts)
- `snmpd_monitoring`: installs and configures monitoring tools (e.g. Nagios, Zabbix) to monitor SNMPd
- `snmpd_security`: manages SNMP security settings (e.g. encryption, authentication)
- `snmpd_logging`: manages SNMP logging settings and log rotation
- `snmpd_smux`: installs and manages the SMUX daemon
- `snmpd_smux_subagents`: installs and manages SMUX subagents
- `snmpd_mibs`: installs and manages MIBs
- `snmpd_mib_communities`: manages MIB communities

## Recipes

This cookbook provides the following recipes:

- `default`: installs and configures SNMPd
- `install`: installs the SNMPd package
- `config`: manages the SNMPd configuration file
- `service`: manages the SNMPd service
- `users`: manages SNMP users and their access rights
- `notifications`: manages SNMP notifications (e.g. traps and informs)
- `agentx`: installs and manages SNMP subagents using the AgentX protocol
- `extensions`: manages SNMP extensions (e.g. custom MIBs or scripts)
- `monitoring`: installs and configures monitoring tools (e.g. Nagios, Zabbix) to monitor SNMPd
- `security`: manages SNMP security settings (e.g. encryption, authentication)
- `logging`: manages SNMP logging settings and log rotation
- `smux`: installs and manages the SMUX daemon
- `smux_subagents`: installs and manages SMUX subagents
- `mibs`: installs and manages MIBs
- `mib_communities`: manages MIB communities

## Attributes

The following attributes are provided to configure the behavior of the cookbook:

- `node['snmpd']['package_name']`: the name of the SNMPd package to install (default: `snmpd`)
- `node['snmpd']['config_file']`: the path to the SNMPd configuration file (default: `/etc/snmp/snmpd.conf`)
- `node['snmpd']['communities']`: a hash of SNMP community strings and their access rights (default: `{}`)
- `node['snmpd']['acl']`: an access control list (ACL) for controlling SNMP access (default: `[]`)
- `node['snmpd']['notifications']`: a list of SNMP notifications to send (default: `[]`)
- `node['snmpd']['agentx_subagents']`: a list of SNMP subagents to install and manage using the AgentX protocol (default: `[]`)
- `node['snmpd']['extensions']`: a list of SNMP extensions (e.g. custom MIBs or scripts) to install and manage (default: `[]`)
- `node['snmpd']['monitoring']['tool']`: the monitoring tool to use (e.g. `nagios`, `zabbix`) (default: `nil`)
- `node['snmpd']['security']['encryption']`: the encryption method to use (e.g. `aes`, `des`) (default: `nil`)
- `node['snmpd']['security']['authentication']`: the authentication method to use (e.g. `md5`, `sha`) (default: `nil`)

## Test Kitchen

This cookbook includes Test Kitchen support for testing on the following virtualization platforms:

- VirtualBox
- Hyper-V
- VMware Desktop

To use Test Kitchen with this cookbook, you will need to install the following dependencies:

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Hyper-V (Windows only)](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)
- [VMware Desktop](https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html)
- [Test Kitchen](https://kitchen.ci/docs/getting-started/installing-kitchen)

Once the dependencies are installed, you can use the following command to run the test suite:

```bash
kitchen test
