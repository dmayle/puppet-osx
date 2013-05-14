class osx::finder::path_bar($enabled) {
  boxen::osx_defaults { 'Toggle Whether to Show the Finder Path Bar':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'ShowPathbar',
    value  => $enabled,
    notify => Exec['killall Finder'],
  }
}
