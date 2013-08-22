class people::atomaka::osx::config {
  class { 'osx::dock::icon_size':
    size => 36
  }

  include osx::finder::show_all_on_desktop
  include osx::dock::clear_dock
}
