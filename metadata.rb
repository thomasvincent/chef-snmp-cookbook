name 'snmpd'
maintainer 'Thomas Vincent'
maintainer_email 'thomasvincent@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures snmpd'
long_description 'Installs and configures snmpd, a daemon for Simple Network Management Protocol (SNMP). This cookbook provides resources for installing snmpd, configuring its various settings, managing users and notifications, and more. It also includes support for installing and configuring SNMP extension agents, monitoring and security features, logging, and MIBs.'
version '5.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/snmpd/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/snmpd'

# Specify the operating systems supported by the cookbook
supports 'ubuntu'
supports 'centos'
supports 'redhat'
supports 'solaris'
supports 'windows'
supports 'amazon'
supports 'aix'
supports 'freebsd'
supports 'suse'
