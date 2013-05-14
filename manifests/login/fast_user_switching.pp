class osx::login::fast_user_switching($enabled) {
  boxen::osx_defaults { 'Toggles Whether Allow Fast User Switching':
    user   => root,
    key    => 'MultipleSessionEnabled',
    domain => '/Library/Preferences/.GlobalPreferences',
    value  => $enabled,
    notify => Exec['killall SystemUIServer'],
  }
}
