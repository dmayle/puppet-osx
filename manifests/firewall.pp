class osx::firewall($enabled) {
  include osx::firewall::config

  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  case $enabled {
    true:  { $enabled_check = 'enabled' }
    false: { $enabled_check = 'disabled' }
  }

  exec { 'Toggles Whether the Firewall is Enabled':
    command => "${osx::firewall::config::path_to_binary} --setglobalstate ${enabled_value}",
    unless  => "${osx::firewall::config::path_to_binary} --getglobalstate | grep ${enabled_check}",
    user    => root,
  }
}
