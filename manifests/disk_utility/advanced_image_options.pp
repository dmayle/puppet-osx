class osx::disk_utility::advanced_image_options($enabled) {

  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggle Advanced Image Options in Disk Utility':
    user   => $::boxen_user,
    domain => 'com.apple.DiskUtility',
    key    => 'advanced-image-options',
    value  => $enabled_int,
  }
}
