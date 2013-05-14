class osx::network::dsstores($enabled) {
  boxen::osx_defaults { 'Toggle the Creation of .DS_Store Files on Network Volumes':
    user   => $::boxen_user,
    domain => 'com.apple.desktopservices',
    key    => 'DSDontWriteNetworkStores',
    value  => !$enabled,
  }
}
