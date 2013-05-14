class osx::universal_access::flash_screen($enabled) {

  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggle Whether the Screen Flashes When an Alert Occurs':
    user   => $::boxen_user,
    domain => 'com.apple.universalaccess',
    key    => 'flashScreen',
    value  => $enabled_int,
  }
}
