class osx::energy::display_sleep(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if is_integer($on_battery) {
    exec { 'Set Time Until Display Sleeps When on Battery Power':
      command => "pmset -b displaysleep ${on_battery}",
      user    => root,
      unless  => "pmset -g custom | sed -ne '/Battery Power:/,/^.*:/p' | grep -E '^\sdisplaysleep\s+${on_battery}'",
    }
  }

  if is_integer($when_plugged_in) {
    exec { 'Set Time Until Display Sleeps When Plugged In':
      command => "pmset -c displaysleep ${when_plugged_in}",
      user    => root,
      unless  => "pmset -g custom | sed -ne '/AC Power:/,/^.*:/p' | grep -E '^\sdisplaysleep\s+${when_plugged_in}'",
    }
  }
}
