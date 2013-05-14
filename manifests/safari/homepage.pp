class osx::safari::homepage($page) {
  boxen::osx_defaults { 'Set the Default Safari Homepage':
    user   => $::boxen_user,
    domain => 'com.apple.Safari',
    key    => 'HomePage',
    value  => $page,
  }
}
