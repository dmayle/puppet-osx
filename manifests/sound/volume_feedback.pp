class osx::sound::volume_feedback($enabled) {
  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggle Volume Feedback Sound':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.sound.beep.feedback',
    type   => 'int',
    value  => $enabled_int,
  }
}
