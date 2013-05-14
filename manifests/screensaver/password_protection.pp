class osx::screensaver::password_protection(
  $enabled = undef,
  $delay   = undef) {

  case $enabled {
    true:  { $enabled_int = 1 }
    false: { $enabled_int = 0 }
  }

  if $enabled != undef {
    boxen::osx_defaults { 'Toggles Whether or not a Password is Required to Disable the Screensaver':
      user   => $::boxen_user,
      key    => 'askForPassword',
      domain => 'com.apple.screensaver',
      value  => $enabled_int,
    }
  }

  if $delay != undef {
    boxen::osx_defaults { 'Set the Delay Before a Password is Required':
      user   => $::boxen_user,
      key    => 'askForPasswordDelay',
      domain => 'com.apple.screensaver',
      value  => $delay,
    }
  }
}
