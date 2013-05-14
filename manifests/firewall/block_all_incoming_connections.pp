class osx::firewall::block_all_incoming_connections($enabled) {
  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggle Whether the Firewall Blocks All Non-Essential Incoming Connections':
    command => "/usr/libexec/ApplicationFirewall/socketfilterfw --setblockall ${enabled_value}",
    user    => root,
  }
}
