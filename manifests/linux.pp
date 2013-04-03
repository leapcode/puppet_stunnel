class stunnel::linux inherits stunnel::base {

  if $stunnel::ensure_version == '' { $stunnel::ensure_version = 'installed' }
  package { 'stunnel':
    ensure => $stunnel::ensure_version
  }
}
