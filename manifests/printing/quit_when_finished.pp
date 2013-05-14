class osx::printing::quit_when_finished($enabled) {
  boxen::osx_defaults { 'Toggle Whether the Print Dialog Should Disappear When All Jobs Are Complete':
    user   => $::boxen_user,
    key    => '"Quit When Finished"',
    domain => 'com.apple.print.PrintingPrefs',
    value  => $enabled,
  }
}
