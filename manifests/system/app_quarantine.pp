class osx::system::app_quarantine($enabled) {
  boxen::osx_defaults { 'Toggle the Downloaded App Quarantine':
    user   => $::boxen_user,
    key    => 'LSQuarantine',
    domain => 'com.apple.LaunchServices',
    value  => $enabled,
  }
}
