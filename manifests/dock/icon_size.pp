class osx::dock::icon_size($size = 36) {
  include osx::dock

  boxen::osx_defaults { 'Sets the Size of the Icons in Pixels':
    user   => $::boxen_user,
    key    => 'tilesize',
    domain => 'com.apple.dock',
    type   => 'int',
    value  => $size,
    notify => Exec['killall Dock'],
  }
}
