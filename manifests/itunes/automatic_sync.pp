class osx::itunes::automatic_sync($enabled) {
  boxen::osx_defaults { 'Toggle Whether iPods and iPhones Sync Automatically When Connected':
    user   => $::boxen_user,
    key    => 'dontAutomaticallySyncIPods',
    domain => 'com.apple.iTunes',
    value  => !$enabled,
  }
}
