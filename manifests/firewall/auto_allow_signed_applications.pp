class osx::firewall::auto_allow_signed_applications($enabled) {
  include osx::firewall::config

  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggles Whether Signed Apps are Automatically Allowed to Accept Incoming Connections':
    command => "${osx::firewall::config::path_to_binary} --setallowsigned ${enabled_value}",
    user    => root,
  }
}
