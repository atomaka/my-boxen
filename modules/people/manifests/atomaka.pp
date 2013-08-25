class people::atomaka {
  $home = "/Users/${::boxen_user}"

  include chrome
  include tmux
  include iterm2::stable
  include zsh
  include adium
  include thunderbird
  include virtualbox
  include vagrant
  include wget
  include skype
  include league_of_legends::na
  include minecraft
  include dropbox
  include firefox
  include libreoffice
  include qt

  package { 'coreutils': }
  package { 'tig': }
  package { 'vim': }

  include atomaka::dotfiles
  include atomaka::osx::config

  file { "${home}/Source":
    ensure => directory,
  }
}
