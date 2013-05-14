class osx::login::power_options($shown) {
  case $shown {
    true:  { $shown_int = 1 }
    false: { $shown_int = 0 }
  }

  boxen::osx_defaults { 'Toggles Whether to Show Power Options on the Login Screen':
    user   => root,
    key    => 'PowerOffDisabled',
    domain => '/Library/Preferences/com.apple.loginwindow',
    type   => 'int',
    value  => $shown_int,
    notify => Exec['killall SystemUIServer'],
  }
}
