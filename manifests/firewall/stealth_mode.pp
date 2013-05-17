class osx::firewall::stealth_mode($enabled) {
  include osx::firewall::config

  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggles Whether the Firewall Responds to Innocuous Requests like PING':
    command => "${osx::Firewall::config::path_to_binary} --setstealthmode ${enabled_value}",
    user    => root,
  }
}
