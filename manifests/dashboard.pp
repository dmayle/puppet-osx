class osx::dashboard($enabled) {
  boxen::osx_defaults { 'Toggle Whether Dashboard is Enabled':
    user   => $::boxen_user,
    key    => 'mcx-disabled',
    domain => 'com.apple.dashboard',
    value  => $enabled,
    notify => Exec['killall Dashboard'],
  }

  exec { 'killall Dashboard':
    refreshonly => true
  }
}
