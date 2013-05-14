class osx::windows::scroll_bars($style = 'Automatic') {
  boxen::osx_defaults { 'Sets the Scrollbar Mode':
    user   => $::boxen_user,
    key    => 'AppleShowScrollBars',
    domain => 'NSGlobalDomain',
    value  => $style,
  }
}
