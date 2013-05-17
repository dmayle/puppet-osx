class osx::time_machine::local_backups($enabled) {
  case $enabled {
    true:  { $enabled_text = 'enable' }
    false: { $enabled_text = 'disable' }
  }

  case $enabled {
    true:  { $enabled_check = 'grep -E  "Kind\s+:\s+Local"' }
    false: { $enabled_check = 'grep -LE "Kind\s+:\s+Local"' }
  }

  exec { 'Toggle Whether Local Time Machine Backups are Enabled':
    command => "tmutil ${enabled_text}local",
    onlyif  => "hash tmutil &> /dev/null && tmutil destinationinfo | ${enabled_check}",
    user    => root,
  }
}
