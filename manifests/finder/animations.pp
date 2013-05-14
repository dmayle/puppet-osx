class osx::finder::animations($enabled) {
  boxen::osx_defaults { 'Toggle Whether to Enable Finder Animations':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'DisableAllAnimations',
    value  => !$enabled,
  }
}
