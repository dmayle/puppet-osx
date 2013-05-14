class osx::energy::disk_sleep(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if $on_battery != undef {
    exec { 'Set Time Until Disk Sleeps When on Battery Power':
      command => "pmset -b disksleep ${on_battery}",
      user    => root,
    }
  }

  if $when_plugged_in != undef {
    exec { 'Set Time Until Disk Sleeps When Plugged In':
      command => "pmset -c disksleep ${when_plugged_in}",
      user    => root,
    }
  }
}
