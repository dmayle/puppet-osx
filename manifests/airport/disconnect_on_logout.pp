class osx::airport::disconnect_on_logout($enabled) {
  include osx::airport

  case $enabled {
    true:  { $enabled_yes_no = 'YES' }
    false: { $enabled_yes_no = 'NO' }
  }

  exec { 'Toggle Airport "Disconnect On Logout" Preference':
    command => "${osx::airport::path_to_binary} prefs DisconnectOnLogout=${enabled_yes_no}",
    unless  => "${osx::airport::path_to_binary} prefs DisconnectOnLogout | grep ${enabled_yes_no}",
    user    => root,
  }
}
