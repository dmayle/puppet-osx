class osx::touchpad::gestures::app_expose($enabled) {
  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggle the Ability to Swipe for App Expose':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'showAppExposeGestureEnabled',
    value  => $enabled_int,
  }
}
