class osx::airport::require_password_to_change_networks($enabled) {
  include osx::airport

  case $enabled {
    true:  { $enabled_yes_no = 'YES' }
    false: { $enabled_yes_no = 'NO' }
  }

  exec { 'Toggle Airport "Require Password to Change Networks" Preference':
    command => "${osx::airport::path_to_binary} prefs RequireAdminNetworkChange=${enabled_yes_no}",
    unless  => "${osx::airport::path_to_binary} prefs RequireAdminNetworkChange | grep ${enabled_yes_no}",
    user    => root,
  }
}
