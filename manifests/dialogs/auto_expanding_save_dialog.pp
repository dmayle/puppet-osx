class osx::dialogs::auto_expanding_save_dialog($enabled) {
  boxen::osx_defaults { 'Expand save panel by default':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSNavPanelExpandedStateForSaveMode',
    value  => $enabled,
  }
}
