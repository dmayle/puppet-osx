class osx::keyboard::default_to_alternate_function_keys($enabled) {
  boxen::osx_defaults { 'Default to "Alernate" Function Keys When Not Holding the "fn" Key':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.keyboard.fnState',
    value  => $enabled,
  }
}
