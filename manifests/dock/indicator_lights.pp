class osx::dock::indicator_lights($enabled) {
  include osx::dock

  boxen::osx_defaults { 'Toggle Indicator Lights Under Running Applications':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'show-process-indicators',
    value  => $enabled,
    notify => Exec['killall Dock'],
  }
}
