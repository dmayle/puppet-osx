class osx::time_machine::local_backups($enabled) {
  case $enabled {
    true:  { $enabled_text = 'enable' }
    false: { $enabled_text = 'disable' }
  }

  exec { 'Toggle Whether Local Time Machine Backups are Enabled':
    command => "hash tmutil &> /dev/null && tmutil ${enabled_text}local",
    user    => root,
  }
}
