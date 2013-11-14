class people::atomaka::osx::config {
  osx::recovery_message { 'If this Mac is found, please call 734-732-5086': }

  class { 'osx::dock::icon_size':
    size => 36
  }

  include osx::global::expand_save_dialog
  include osx::finder::show_all_on_desktop
  include osx::dock::clear_dock

  boxen::osx_defaults { 'Change Time Format':
    user   => $::boxen_user,
    domain => 'com.apple.menuextra.clock',
    key    => 'DateFormat',
    value  => 'MMM d H:mm',
    notify => Exec['killall SystemUIServer'];
  }

  exec { 'killall SystemUIServer':
    refreshonly => true,
  }

  exec { 'Toggles Whether the Firewall is Enabled':
    command => "/usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on",
    user    => root,
  }

  boxen::osx_defaults { 'Toggle Whether Dashboard is Enabled':
    user   => $::boxen_user,
    key    => 'mcx-disabled',
    domain => 'com.apple.dashboard',
    value  => true,
    notify => Exec['killall Dock'],
  }
}
