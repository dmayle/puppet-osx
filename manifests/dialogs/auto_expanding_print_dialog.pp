class osx::dialogs::auto_expanding_print_dialog($enabled) {
  boxen::osx_defaults { 'Expand print panel by default - Part 1':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'PMPrintingExpandedStateForPrint',
    value  => $enabled,
  }

  boxen::osx_defaults { 'Expand print panel by default - Part 2':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'PMPrintingExpandedStateForPrint2',
    value  => $enabled,
  }
}
