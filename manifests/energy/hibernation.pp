class osx::energy::hibernation(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if is_integer($on_battery) {
    exec { 'Set Time Until the System Hibernates When on Battery Power':
      command => "pmset -b standbydelay ${on_battery}",
      user    => root,
      unless  => "pmset -g custom | sed -ne '/Battery Power:/,/^.*:/p' | grep -E '^\sstandbydelay\s+${on_battery}'",
    }
  }

  if is_integer($when_plugged_in) {
    exec { 'Set Time Until the System Hibernates When Plugged In':
      command => "pmset -c standbydelay ${when_plugged_in}",
      user    => root,
      unless  => "pmset -g custom | sed -ne '/AC Power:/,/^.*:/p' | grep -E '^\sstandbydelay\s+${when_plugged_in}'",
    }
  }
}
