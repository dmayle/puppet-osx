class osx::firewall::logging_mode($enabled) {
  include osx::firewall::config

  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggle Firewall Logging Mode':
    command => "${osx::firewall::config::path_to_binary} --setloggingmode ${enabled_value}",
    unless  => "${osx::firewall::config::path_to_binary} --getloggingmode | grep ${enabled_value}",
    user    => root,
  }
}
