class osx::itunes::automatic_device_backup_when_syncing($enabled) {
  boxen::osx_defaults { 'Toggle Whether iTunes Automatically Backs Up Device on Sync':
    user   => $::boxen_user,
    key    => 'AutomaticDeviceBackupsDisabled',
    domain => 'com.apple.iTunes',
    value  => !$enabled,
  }
}
