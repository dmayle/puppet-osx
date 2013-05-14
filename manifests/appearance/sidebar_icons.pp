class osx::appearance::sidebar_icons(
  $size = undef) {

  case $size {
    'small':  { $size_int = 1 }
    'medium': { $size_int = 2 }
    'large':  { $size_int = 3 }
  }

  if $size != undef {
    boxen::osx_defaults { 'Set the Size of the Icons in the Sidebar':
      user   => $::boxen_user,
      key    => 'NSTableViewDefaultSizeMode',
      domain => 'NSGlobalDomain',
      value  => $size_int,
    }
  }
}
