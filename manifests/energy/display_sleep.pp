class osx::energy::display_sleep(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if $on_battery != undef {
    exec { 'Set Time Until Display Sleeps When on Battery Power':
      command => "pmset -b displaysleep ${on_battery}",
      user    => root,
      unless  => "pmset -g custom | grep 'Battery Power' -A 16 | grep -E '^\sdisplaysleep\s+${on_battery}'",
    }
  }

  if $when_plugged_in != undef {
    exec { 'Set Time Until Display Sleeps When Plugged In':
      command => "pmset -c displaysleep ${when_plugged_in}",
      user    => root,
      unless  => "pmset -g custom | grep 'AC Power' -A 17 | grep -E '^\sdisplaysleep\s+${when_plugged_in}'",
    }
  }
}
