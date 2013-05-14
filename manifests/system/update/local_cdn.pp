class osx::system::update::local_cdn($enabled) {

  boxen::osx_defaults { 'Toggle Whether Software Update Prefers the Apple CDN':
    user   => root,
    domain => 'com.apple.SoftwareUpdate',
    key    => '/Library/Preferences/com.apple.SoftwareUpdate',
    value  => $enabled,
  }
}
