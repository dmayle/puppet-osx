class osx::network::guest($enabled) {
  boxen::osx_defaults { 'Toggles Whether to Allow Guest Access to Shared Folders - Part 1':
    user   => root,
    key    => 'guestAccess',
    domain => '/Library/Preferences/com.apple.AppleFileServer',
    value  => $enabled,
  }

  boxen::osx_defaults { 'Toggles Whether to Allow Guest Access to Shared Folders - Part 2':
    user   => root,
    key    => 'AllowGuestAccess',
    domain => '/Library/Preferences/com.apple.smb.server',
    value  => $enabled,
  }
}
