class osx::touchpad::gestures::three_finger_vertical_swipe($effect) {

  case $effect {
    'disabled':        { $effect_int = 0 }
    'mission control': { $effect_int = 2 }
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Up/Down with Three Fingers - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadThreeFingerVertSwipeGesture',
    value  => $effect_int,
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Up/Down with Three Fingers - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    host   => 'currentHost',
    key    => 'com.apple.trackpad.threeFingerVertSwipeGesture',
    value  => $effect_int,
  }
}
