class osx::universal_access::assistive_device_access($enabled) {
  case $enabled {
    true:  { $enabled_val = 'present' }
    false: { $enabled_val = 'absent' }
  }

  file { '/private/var/db/.AccessibilityAPIEnabled':
    ensure  => $enabled_val,
    content => 'a',
    owner   => root,
    group   => 'wheel',
    mode    => 0444,
  }
}
