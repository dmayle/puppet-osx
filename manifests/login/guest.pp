class osx::login::guest($enabled) {
  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggles Whether to Allow the Guest Account to Login':
    user   => root,
    key    => 'GuestEnabled',
    domain => '/Library/Preferences/com.apple.loginwindow',
    type   => 'int',
    value  => $enabled_int,
    notify => Exec['killall SystemUIServer'],
  }
}
