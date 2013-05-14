class osx::gatekeeper($enabled) {

  case $enabled {
    true:  { $enabled_text = 'enable' }
    false: { $enabled_text = 'disable' }
  }

  exec { 'Toggles Whether to Restart Automatically if System Hangs':
    command => "spctl --master-${enabled_text}",
    user    => root,
  }
}
