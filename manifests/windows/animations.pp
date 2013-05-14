class osx::windows::animations(
  $enabled         = undef,
  $resize_duration = undef) {

  if $enabled != undef {
    boxen::osx_defaults { 'Toggle Open/Close Window Animations':
      user   => $::boxen_user,
      key    => 'NSAutomaticWindowAnimationsEnabled',
      domain => 'NSGlobalDomain',
      value  => $enabled,
    }
  }

  if $resize_duration != undef {
    boxen::osx_defaults { 'Sets the Length of Time in Seconds When a Window is Resized':
      user   => $::boxen_user,
      key    => 'NSWindowResizeTime',
      domain => 'NSGlobalDomain',
      type   => 'float',
      value  => $resize_duration,
    }
  }
}
