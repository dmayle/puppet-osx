class osx::system::crash_reporter($enabled) {
  boxen::osx_defaults { 'Toggle the Dialog to Sent Usage Statistics to Apple - Part 1':
    user   => $::boxen_user,
    key    => 'DialogType',
    domain => 'com.apple.CrashReporter',
    value  => $enabled;
  }

  boxen::osx_defaults { 'Toggle the Dialog to Sent Usage Statistics to Apple - Part 2':
    user   => $::boxen_user,
    key    => 'AutoSubmit',
    host   => 'currentHost',
    domain => 'com.apple.SubmitDiagInfo',
    value  => $enabled;
  }
}
