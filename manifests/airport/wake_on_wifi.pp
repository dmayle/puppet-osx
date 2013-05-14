class osx::airport::wake_on_wifi($enabled) {
  include osx::airport

  case $enabled {
    true:  { $enabled_yes_no = 'YES' }
    false: { $enabled_yes_no = 'NO' }
  }

  exec { 'Toggle Airport "Wake on Wifi" Preference':
    command => "${osx::airport::path_to_binary} prefs WoWEnabled=${enabled_yes_no}",
    user    => root,
  }
}
