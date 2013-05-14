class osx::touchpad::gestures::four_finger_vertical_swipe($effect) {

  case $effect {
    'disabled':        { $effect_int = 0 }
    'mission control': { $effect_int = 2 }
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Up/Down with Four Fingers - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadFourFingerVertSwipeGesture',
    value  => $effect_int,
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Up/Down with Four Fingers - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.fourFingerVertSwipeGesture',
    host   => 'currentHost',
    value  => $effect_int,
  }
}
