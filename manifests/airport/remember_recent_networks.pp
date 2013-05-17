class osx::airport::remember_recent_networks($enabled) {
  include osx::airport

  case $enabled {
    true:  { $enabled_yes_no = 'YES' }
    false: { $enabled_yes_no = 'NO' }
  }

  exec { 'Toggle Airport "Remember Recent Networks" Preference':
    command => "${osx::airport::path_to_binary} prefs RememberRecentNetworks=${enabled_yes_no}",
    unless  => "${osx::airport::path_to_binary} prefs RememberRecentNetworks | grep ${enabled_yes_no}",
    user    => root,
  }
}
