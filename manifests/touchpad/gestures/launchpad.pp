class osx::touchpad::gestures::launchpad($enabled) {
  boxen::osx_defaults { 'Toggle the Ability to Pinch with Thumb and Three Fingers for Launchpad':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'showLaunchpadGestureEnabled',
    value  => $enabled,
  }
}
