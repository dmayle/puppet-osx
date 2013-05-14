class osx::system::update::schedule($frequency) {

  # TODO: Add the rest of the frequencies
  case $frequency {
    'daily': { $frequency_int = 1 }
  }

  boxen::osx_defaults { 'Sets the Interval Between Software Update Checks':
    user   => root,
    domain => '/Library/Preferences/com.apple.SoftwareUpdate',
    key    => 'ScheduleFrequency',
    type   => 'int',
    value  => $frequency_int,
  }
}
