class osx::system::update::automatic_downloads($enabled) {

  boxen::osx_defaults { 'Toggle Whether Software Updates are Downloaded in the Background when Available':
    user   => root,
    domain => 'AutomaticDownload',
    key    => '/Library/Preferences/com.apple.SoftwareUpdate',
    value  => $enabled,
  }
}
