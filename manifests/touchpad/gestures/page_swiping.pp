class osx::touchpad::gestures::page_swiping($enabled) {
  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggle the Ability to Swipe to Switch Pages':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleEnableSwipeNavigateWithScrolls',
    value  => $enabled_int,
  }
}
