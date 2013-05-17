class osx::firewall($enabled) {
  include osx::firewall::config

  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggles Whether the Firewall is Enabled':
    command => "${osx::firewall::config::path_to_binary} --setglobalstate ${enabled_value}",
    user    => root,
  }
}
