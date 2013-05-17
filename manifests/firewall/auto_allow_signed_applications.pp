class osx::firewall::auto_allow_signed_applications($enabled) {
  include osx::firewall::config

  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  case $enabled {
    true:  { $enabled_check = 'ENABLED' }
    false: { $enabled_check = 'DISABLED' }
  }

  exec { 'Toggles Whether Signed Apps are Automatically Allowed to Accept Incoming Connections':
    command => "${osx::firewall::config::path_to_binary} --setallowsigned ${enabled_value}",
    unless  => "${osx::firewall::config::path_to_binary} --getallowsigned | grep ${enabled_check}",
    user    => root,
  }
}
