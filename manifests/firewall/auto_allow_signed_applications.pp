class osx::firewall::auto_allow_signed_applications($enabled) {
  case $enabled {
    true:  { $enabled_value = 'on' }
    false: { $enabled_value = 'off' }
  }

  exec { 'Toggles Whether Signed Apps are Automatically Allowed to Accept Incoming Connections':
    command => "/usr/libexec/ApplicationFirewall/socketfilterfw --setallowsigned ${enabled_value}",
    user    => root,
  }
}
