class people::atomaka::dotfiles {
  $home = $people::atomaka::home
  $dotfiles = "${home}/dotfiles"
  $vim = "${home}/.vim"

  repository { $dotfiles:
    source => 'atomaka/dotfiles',
  }

  file { "${home}/.vimrc":
    ensure  => link,
    target => "${dotfiles}/.vimrc",
    require => Repository[$dotfiles],
  }

  file { "${vim}/bundle":
    ensure => directory,
    require => Repository[$dotfiles],
  }

  file { "${vim}/bundle/vundle":
    ensure => link,
    target => "${dotfiles}/.vim/bundle/vundle",
    require => Repository[$dotfiles],
  }

  file { "${vim}/plugin":
    ensure => link,
    target => "${dotfiles}/.vim/plugin",
    require => Repository[$dotfiles],
  }

  file { "${vim}/colors":
    ensure => directory,
    require => Repository[$dotfiles],
  }

  file { "${vim}/colors/vividchalk.vim":
    ensure => link,
    target => "${dotfiles}/.vim/colors/vividchalk.vim",
    require => [Repository[$dotfiles], File["${vim}/colors"]],
  }

  file { "${home}/.zsh":
    ensure => link,
    target => "${dotfiles}/.zsh",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zshrc":
    ensure => link,
    target => "${dotfiles}/.zshrc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.aliases":
    ensure => link,
    target => "${dotfiles}/.aliases",
    require => Repository[$dotfiles],
  }

  file { "${home}/.functions":
    ensure => link,
    target => "${dotfiles}/.functions",
    require => Repository[$dotfiles],
  }

  file { "${home}/.oh-my-zsh":
    ensure => link,
    target => "${dotfiles}/.oh-my-zsh",
    require => Repository[$dotfiles],
  }

  file { "${home}/.gitconfig":
    ensure => link,
    target => "${dotfiles}/.gitconfig",
    require => Repository[$dotfiles],
  }

  file { "${home}/.gitignore_global":
    ensure => link,
    target => "${dotfiles}/.gitignore_global",
    require => Repository[$dotfiles],
  }

  file { "${home}/.tmux.conf":
    ensure => link,
    target => "${dotfiles}/.tmux.conf",
    require => Repository[$dotfiles],
  }
}
