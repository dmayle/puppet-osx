class osx::dock::style($style) {
  include osx::dock

  case $style {
    '3D': { $style_mode = false }
    '2D': { $style_mode = true }
  }

  boxen::osx_defaults { 'Set the Style of the Dock':
    user   => $::boxen_user,
    key    => 'no-glass',
    domain => 'com.apple.dock',
    value  => $style_mode,
    notify => Exec['killall Dock'],
  }
}
