class stunnel::linux inherits stunnel::base {

  if $ensure_version == '' { $ensure_version = 'installed' }
  package { 'stunnel':
    ensure => $ensure_version
  }
}
