class osx::time_machine::ask_to_use_new_disks_for_backup($enabled) {
  boxen::osx_defaults { 'Toggle Whether Time Machine Asks to Use New Disks for Backup':
    user   => $::boxen_user,
    key    => 'DoNotOfferNewDisksForBackup',
    domain => 'com.apple.TimeMachine',
    value  => $enabled,
  }
}
