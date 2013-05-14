class osx::displays::auto_brightness_adjustment($enabled) {

  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  boxen::osx_defaults { 'Toggle Whether Brightness is Automatically Adjusted Depending on Ambient Light':
    user   => root,
    key    => '"Automatic Display Enabled"',
    domain => '/Library/Preferences/com.apple.iokit.AmbientLightSensor',
    type   => 'int',
    value  => $enabled_int,
  }
}
