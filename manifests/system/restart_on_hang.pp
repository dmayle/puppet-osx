class osx::system::restart_on_hang($enabled) {

  case $enabled {
    true:  { $enabled_text = 'on' }
    false: { $enabled_text = 'off' }
  }

  case $enabled {
    true:  { $enabled_check = 'On' }
    false: { $enabled_check = 'Off' }
  }

  exec { 'Toggles Whether to Restart Automatically if System Hangs':
    command => "systemsetup -setrestartfreeze ${enabled_text}",
    unless  => "systemsetup -getrestartfreeze ${enabled_check}",
    user    => root,
  }
}
