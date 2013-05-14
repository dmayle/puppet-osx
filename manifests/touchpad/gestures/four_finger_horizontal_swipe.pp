class osx::touchpad::gestures::four_finger_horizontal_swipe($effect) {

  case $effect {
    'disable':      { $effect_int = 0 }
    'switch apps':  { $effect_int = 2 }
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Left/Right with Four Fingers - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadFourFingerHorizSwipeGesture',
    value  => $effect_int,
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Left/Right with Four Fingers - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.fourFingerHorizSwipeGesture',
    host   => 'currentHost',
    value  => $effect_int,
  }
}
