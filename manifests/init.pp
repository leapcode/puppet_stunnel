#
# stunnel puppet module
#
# Copyright 2009, Riseup Networks <micah@riseup.net>
#
#
# This program is free software; you can redistribute
# it and/or modify it under the terms of the GNU
# General Public License version 3 as published by
# the Free Software Foundation.
#
# 1. include stunnel: this will automatically include stunnel::debian,
#    which automatically includes stunnel::linux, which automatically
#    includes stunnel::base
# 2. stunnel::client allows you to configure different /etc/stunnel/*.conf files
#    to provide various stunnel configurations

# TODO: warn on cert/key issues, fail on false accept?

class stunnel ( $ensure_version = 'present', $startboot = '1', $default_extra )
{

  case $::operatingsystem {
    debian: { class { 'stunnel::debian': } }
    centos: { class {  'stunnel::centos': } }
    default: { class { 'stunnel::default': } }
  }
}
