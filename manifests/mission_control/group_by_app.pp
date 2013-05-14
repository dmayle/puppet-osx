class osx::mission_control::group_by_app($enabled) {
  boxen::osx_defaults { 'Toggle Whether Multiple Windows for an App are Grouped Together in Mission Control':
    user   => $::boxen_user,
    key    => 'expose-group-by-app',
    domain => 'com.apple.dock',
    value  => $enabled,
  }
}
