class osx::airport::require_password_to_toggle_power($enabled) {
  include osx::airport

  case $enabled {
    true:  { $enabled_yes_no = 'YES' }
    false: { $enabled_yes_no = 'NO' }
  }

  exec { 'Toggle Airport "Require Password to Turn Wi-Fi On or Off" Preference':
    command => "${osx::airport::path_to_binary} prefs RequireAdminPowerToggle=${enabled_yes_no}",
    user    => root,
  }
}
