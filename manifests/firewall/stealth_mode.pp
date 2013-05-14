class osx::firewall::stealth_mode($enabled) {
  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggles Whether the Firewall Responds to Innocuous Requests like PING':
    command => "/usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode ${enabled_value}",
    user    => root,
  }
}
