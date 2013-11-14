class people::atomaka {
  $home = "/Users/${::boxen_user}"

  package { 'coreutils': }
  package { 'tig': }
  package { 'vim': }
  package { 'rdesktop': }
  package { 'imagemagick': }
  package { 'mobile-shell': }

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
