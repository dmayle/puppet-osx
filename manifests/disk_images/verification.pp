class osx::disk_images::verification($enabled) {

  case $enabled {
    false:  { $enabled_int = 1 }
    true:   { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggle the Verification of Disk Images - Part 1':
    user   => $::boxen_user,
    domain => 'com.apple.frameworks.diskimages',
    key    => 'skip-verify',
    type   => 'int',
    value  => $enabled_int,
  }

  boxen::osx_defaults { 'Toggle the Verification of Disk Images - Part 2':
    user   => $::boxen_user,
    domain => 'com.apple.frameworks.diskimages',
    key    => 'skip-verify-locked',
    type   => 'int',
    value  => $enabled_int,
  }

  boxen::osx_defaults { 'Toggle the Verification of Disk Images - Part 3':
    user   => $::boxen_user,
    domain => 'com.apple.frameworks.diskimages',
    key    => 'skip-verify-remote',
    type   => 'int',
    value  => $enabled_int,
  }
}
