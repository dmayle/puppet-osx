class osx::firewall::logging_mode($enabled) {
  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggle Firewall Logging Mode':
    command => "/usr/libexec/ApplicationFirewall/socketfilterfw --setloggingmode ${enabled_value}",
    user    => root,
  }
}
