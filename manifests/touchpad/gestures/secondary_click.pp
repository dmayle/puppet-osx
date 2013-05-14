class osx::touchpad::gestures::secondary_click($enabled) {

  case $enabled {
    true:  { $mouse_mode = 'TwoButton' }
    false: { $mouse_mode = 'OneButton' }
  }

  boxen::osx_defaults { 'Toggle Secondary "Right" Click on Internal Touchpad':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.enableSecondaryClick',
    value  => $enabled,
  }

  boxen::osx_defaults { 'Toggle Secondary "Right" Click on External Touchpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadRightClick',
    value  => $enabled,
  }

  boxen::osx_defaults { 'Toggle Secondary "Right" Click on Magic Mouse':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.mouse',
    key    => 'MouseButtonMode',
    value  => $mouse_mode,
  }
}
