class osx::firewall($enabled) {
  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggles Whether the Firewall is Enabled':
    command => "/usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate ${enabled_value}",
    user    => root,
  }
}
