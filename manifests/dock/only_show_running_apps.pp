class osx::dock::only_show_running_apps($enabled) {
  include osx::dock

  boxen::osx_defaults { 'Toggles Whether to Only Show Running Application in the Dock':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'static-only',
    value  => $enabled,
    notify => Exec['killall Dock'],
  }
}
