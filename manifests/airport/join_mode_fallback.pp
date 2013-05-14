class osx::airport::join_mode_fallback($mode) {
  include osx::airport

  # Modes: Prompt | JoinOpen | KeepLooking | DoNothing

  exec { 'Set What to Do When None of the Preferred Networks Are Available':
    command => "${osx::airport::path_to_binary} prefs JoinModeFallback=${mode}",
    user    => root,
  }
}
