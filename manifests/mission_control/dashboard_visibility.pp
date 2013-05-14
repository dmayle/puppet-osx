class osx::mission_control::dashboard_visibility($visible) {
  boxen::osx_defaults { 'Toggle the Visibility of the Dashboard as a Space in Mission Control':
    user   => $::boxen_user,
    key    => 'dashboard-in-overlay',
    domain => 'com.apple.dock',
    value  => !$visible,
    notify => Exec['killall Dock'],
  }
}
