class osx::dock::hidden_app_dimming($enabled) {
  include osx::dock

  boxen::osx_defaults { 'Dim hidden apps':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'showhidden',
    value  => $enabled,
    notify => Exec['killall Dock'],
  }
}
