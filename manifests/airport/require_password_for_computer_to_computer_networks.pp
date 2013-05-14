class osx::airport::require_password_for_computer_to_computer_networks($enabled) {
  include osx::airport

  case $enabled {
    true:  { $enabled_yes_no = 'YES' }
    false: { $enabled_yes_no = 'NO' }
  }

  exec { 'Toggle Airport "Require Password for Computer-to-Computer Networks" Preference':
    command => "${osx::airport::path_to_binary} prefs RequireAdminIBSS=${enabled_yes_no}",
    user    => root,
  }
}
