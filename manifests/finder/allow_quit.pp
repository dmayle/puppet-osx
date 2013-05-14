class osx::finder::allow_quit($enabled) {
  boxen::osx_defaults { 'Toggle the Ability to Quit Finder':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'QuitMenuItem',
    value  => $enabled,
    notify => Exec['killall Finder'],
  }
}
