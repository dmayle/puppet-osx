class osx::firewall::block_all_incoming_connections($enabled) {
  include osx::firewall::config

  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggle Whether the Firewall Blocks All Non-Essential Incoming Connections':
    command => "${osx::firewall::config::path_to_binary} --setblockall ${enabled_value}",
    user    => root,
  }
}
