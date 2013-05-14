class osx::system::restart_on_hang($enabled) {

  case $enabled {
    true:  { $enabled_text = 'on' }
    false: { $enabled_text = 'off' }
  }

  exec { 'Toggles Whether to Restart Automatically if System Hangs':
    command => "systemsetup -setrestartfreeze ${enabled_text}",
    user    => root,
  }
}
