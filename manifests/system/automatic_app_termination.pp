class osx::system::automatic_app_termination($enabled) {
  boxen::osx_defaults { 'Toggle Whether to Quit Apps Which Have Been Idle':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSDisableAutomaticTermination',
    value  => !$enabled,
  }
}
