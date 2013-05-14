class osx::energy::hibernation(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if $on_battery != undef {
    exec { 'Set Time Until the System Hibernates When on Battery Power':
      command => "pmset -b standbydelay ${on_battery}",
      user    => root,
    }
  }

  if $when_plugged_in != undef {
    exec { 'Set Time Until the System Hibernates When Plugged In':
      command => "pmset -c standbydelay ${when_plugged_in}",
      user    => root,
    }
  }
}
