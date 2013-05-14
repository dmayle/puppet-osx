class osx::windows::miniaturize_on_double_click($enabled) {

  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Miniaturize Windows on Double-Click':
    user   => $::boxen_user,
    key    => 'AppleMiniaturizeOnDoubleClick',
    domain => 'NSGlobalDomain',
    type   => 'int',
    value  => $enabled_int,
  }
}
