class osx::time_machine::unsupported_network_volumes($allow) {
  boxen::osx_defaults { 'Toggle Whether Unsupported Network Volumes are Displayed in Time Machine':
    user   => $::boxen_user,
    key    => 'TMShowUnsupportedNetworkVolumes',
    domain => 'com.apple.systempreferences',
    value  => $allow,
  }
}
