class osx::energy::disk_sleep(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if $on_battery != undef {
    exec { 'Set Time Until Disk Sleeps When on Battery Power':
      command => "pmset -b disksleep ${on_battery}",
      user    => root,
      unless  => "pmset -g custom | grep 'Battery Power' -A 16 | grep -E '^\sdisksleep\s+${on_battery}'",
    }
  }

  if $when_plugged_in != undef {
    exec { 'Set Time Until Disk Sleeps When Plugged In':
      command => "pmset -c disksleep ${when_plugged_in}",
      user    => root,
      unless  => "pmset -g custom | grep 'AC Power' -A 17 | grep -E '^\sdisksleep\s+${when_plugged_in}'",
    }
  }
}
