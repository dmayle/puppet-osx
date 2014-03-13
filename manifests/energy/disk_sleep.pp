class osx::energy::disk_sleep(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if is_integer($on_battery) {
    exec { 'Set Time Until Disk Sleeps When on Battery Power':
      command => "pmset -b disksleep ${on_battery}",
      user    => root,
      unless  => "pmset -g custom | sed -ne '/Battery Power:/,/^.*:/p' | grep -E '^\sdisksleep\s+${on_battery}'",
    }
  }

  if is_integer($when_plugged_in) {
    exec { 'Set Time Until Disk Sleeps When Plugged In':
      command => "pmset -c disksleep ${when_plugged_in}",
      user    => root,
      unless  => "pmset -g custom | sed -ne '/AC Power:/,/^.*:/p' | grep -E '^\sdisksleep\s+${when_plugged_in}'",
    }
  }
}
