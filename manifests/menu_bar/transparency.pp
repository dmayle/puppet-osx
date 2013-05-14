class osx::menu_bar::transparency($enabled) {
  boxen::osx_defaults { 'Toggle Menu Bar Transparency':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleEnableMenuBarTransparency',
    value  => $enabled,
    notify => Exec['killall SystemUIServer'],
  }
}
