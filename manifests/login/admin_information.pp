class osx::login::admin_information($enabled) {
  if $enabled {
    boxen::osx_defaults { 'Show Admin Information when Clicking the Clock on the Login Screen':
      user   => root,
      key    => 'AdminHostInfo',
      domain => '/Library/Preferences/com.apple.loginwindow',
      value  => 'HostName',
      notify => Exec['killall SystemUIServer'],
    }
  }
  else {
    boxen::osx_defaults { 'Do not Show Admin Information when Clicking the Clock on the Login Screen':
      ensure => absent,
      user   => root,
      key    => 'AdminHostInfo',
      domain => '/Library/Preferences/com.apple.loginwindow',
      notify => Exec['killall SystemUIServer'],
    }
  }
}
