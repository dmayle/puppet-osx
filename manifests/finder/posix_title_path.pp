class osx::finder::posix_title_path($enabled) {
  boxen::osx_defaults { 'Toggle Whether to Show the Full POSIX Path in the Finder Titlebar':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => '_FXShowPosixPathInTitle ',
    value  => $enabled,
  }
}
