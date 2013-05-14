class osx::login::auto_login($enabled) {
  boxen::osx_defaults { 'Toggles Whether to Automatically Login a User':
    user   => root,
    key    => 'autoLoginUser',
    domain => '/Library/Preferences/com.apple.loginwindow',
    value  => $enabled,
    notify => Exec['killall SystemUIServer'],
  }

  if !$enabled {
    file { '/etc/kcpassword':
      ensure => absent,
    }
  }
}
