class people::atomaka {
  $home = "/Users/${::boxen_user}"

  include chrome
  include tmux
  include iterm2::stable
  include zsh

  package { 'coreutils': }
}
