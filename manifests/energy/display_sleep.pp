class osx::energy::display_sleep(
  $on_battery      = undef,
  $when_plugged_in = undef ) {

  if $on_battery != undef {
    exec { 'Set Time Until Display Sleeps When on Battery Power':
      command => "pmset -b displaysleep ${on_battery}",
      user    => root,
    }
  }

  if $when_plugged_in != undef {
    exec { 'Set Time Until Display Sleeps When Plugged In':
      command => "pmset -c displaysleep ${when_plugged_in}",
      user    => root,
    }
  }
}
