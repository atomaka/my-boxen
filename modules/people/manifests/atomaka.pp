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

  package { 'coreutils': }
  package { 'tig': }

  include atomaka::dotfiles
  include atomaka::osx::config
}
