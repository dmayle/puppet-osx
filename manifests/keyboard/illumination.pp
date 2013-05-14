class osx::keyboard::illumination(
  $enabled        = undef,
  $auto_dim       = undef,
  $auto_off_delay = undef) {

  if $enabled != undef {
    boxen::osx_defaults { 'Toggle Whether Keyboard Illuminates':
      user   => $::boxen_user,
      domain => 'com.apple.BezelServices',
      key    => 'kDim',
      value  => $enabled,
    }
  }

  if $auto_dim != undef {
    boxen::osx_defaults { 'Toggle Keyboard Illumination Brightness Changes Depending on Ambient Light':
      user   => $::boxen_user,
      domain => 'com.apple.BezelServices',
      key    => 'dAuto',
      value  => $auto_dim,
    }
  }

  if $auto_off_delay != undef {
    boxen::osx_defaults { 'Set Idle Time Before Keyboard Illumination Turns Off':
      user   => $::boxen_user,
      domain => 'com.apple.BezelServices',
      key    => 'kDimTime',
      type   => 'int',
      value  => $auto_off_delay,
    }
  }
}
