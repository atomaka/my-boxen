class people::atomaka {
  $home = "/Users/${::boxen_user}"

  package { 'coreutils': }
  package { 'mobile-shell': }
  package { 'rdesktop': }
  package { 'tig': }
  package { 'vim': }

  include atomaka::dotfiles
  include atomaka::osx::config
  include atomaka::applications
  include atomaka::fonts

  file { "${home}/Source":
    ensure => directory,
  }
  class { 'nodejs::global':
    version => 'v0.10'
  }
}
