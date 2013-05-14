class osx::finder::status_bar($enabled) {
  boxen::osx_defaults { 'Toggle Whether to Show the Finder Status Bar':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'ShowStatusBar',
    value  => $enabled,
    notify => Exec['killall Finder'],
  }
}
