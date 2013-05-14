class osx::touchpad::gestures::tap_to_drag($enabled) {

  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggle the Ability Drag with an External Touchpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Dragging',
    type   => 'int',
    value  => $enabled_int,
  }
}
