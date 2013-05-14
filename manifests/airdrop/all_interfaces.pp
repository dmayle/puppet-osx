class osx::airdrop::all_interfaces($allow) {
  boxen::osx_defaults { 'Toggle Whether AirDrop Allows You to "Drop" to Any Interface':
    user   => $::boxen_user,
    key    => 'BrowseAllInterfaces',
    domain => 'com.apple.NetworkBrowser',
    value  => $allow,
  }
}
