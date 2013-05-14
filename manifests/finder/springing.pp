class osx::finder::springing(
  $enabled = undef,
  $delay   = undef) {

  if $enabled != undef {
    boxen::osx_defaults { 'Toggles Whether Springing is Enabled':
      user   => $::boxen_user,
      domain => 'NSGlobalDomain',
      key    => 'com.apple.springing.enabled',
      value  => $enabled,
    }
  }

  if $delay != undef {
    boxen::osx_defaults { 'Sets the Delay Before a Hovered Item "Springs"':
      user   => $::boxen_user,
      domain => 'NSGlobalDomain',
      key    => 'com.apple.springing.delay',
      type   => 'float',
      value  => $delay,
    }
  }
}
