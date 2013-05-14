class osx::menu_bar::airplay($enabled) {
  boxen::osx_defaults { 'Toggle Whether to Show the AirPlay Mirroring Icon in the Menu Bar':
    user   => $::boxen_user,
    key    => 'showInMenuBarIfPresent',
    domain => 'com.apple.airplay',
    value  => $enabled,
    notify => Exec['killall SystemUIServer'],
  }
}
