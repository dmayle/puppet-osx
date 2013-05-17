class osx::energy::sleep(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if $on_battery != undef {
    exec { 'Set Time Until System Sleeps When on Battery Power':
      command => "pmset -b sleep ${on_battery}",
      user    => root,
      unless  => "pmset -g custom | grep 'Battery Power' -A 16 | grep -E '^\ssleep\s+${on_battery}'",
    }
  }

  if $when_plugged_in != undef {
    exec { 'Set Time Until System Sleeps When Plugged In':
      command => "pmset -c sleep ${when_plugged_in}",
      user    => root,
      unless  => "pmset -g custom | grep 'AC Power' -A 17 | grep -E '^\ssleep\s+${when_plugged_in}'",
    }
  }
}
