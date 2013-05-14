class osx::keyboard::control_access($mode) {
  case $mode {
    'all_controls_including_dropdowns': { $mode_int = 3 }
    'all_controls':                     { $mode_int = 2 }
    'basic':                            { $mode_int = 1 }
  }

  boxen::osx_defaults { 'Set Keyboard Access for Controls':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleKeyboardUIMode',
    type   => 'int',
    value  => $mode_int,
  }
}

