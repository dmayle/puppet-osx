class osx::dock::orientation($orientation) {
  include osx::dock

  boxen::osx_defaults { 'Set the Position of the Dock Relative to the Desktop':
    user   => $::boxen_user,
    key    => 'orientation',
    domain => 'com.apple.dock',
    value  => $orientation,
    notify => Exec['killall Dock'];
  }
}
