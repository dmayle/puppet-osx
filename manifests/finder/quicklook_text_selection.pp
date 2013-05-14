class osx::finder::quicklook_text_selection($enabled) {
  boxen::osx_defaults { 'Toggle Whether You Can Select Text in a QuickLook Window':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'QLEnableTextSelection',
    value  => $enabled,
  }
}
