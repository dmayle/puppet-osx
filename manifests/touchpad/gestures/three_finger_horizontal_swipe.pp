class osx::touchpad::gestures::three_finger_horizontal_swipe($effect) {

  case $effect {
    'switch pages': { $effect_int = 1 }
    'switch apps':  { $effect_int = 2 }
  }

  if $effect_int == 1 {
    class { 'osx::touchpad::gestures::page_swiping':
      enabled => true,
    }
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Left/Right with Three Fingers - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadThreeFingerHorizSwipeGesture',
    value  => $effect_int,
  }

  boxen::osx_defaults { 'Sets the Effect for Swiping Left/Right with Three Fingers - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.threeFingerHorizSwipeGesture',
    host   => 'currentHost',
    value  => $effect_int,
  }
}
