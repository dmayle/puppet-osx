class osx::keyboard::autocorrect($enabled) {
  boxen::osx_defaults { 'Toggle Auto-Correct':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSAutomaticSpellingCorrectionEnabled',
    value  => $enabled,
  }
}
