class osx::airport::join_mode($mode) {
  include osx::airport

  # Modes: Automatic | Preferred | Ranked | Recent | Strongest

  exec { 'Set What to Do When Preferred Networks Are Available':
    command => "${osx::airport::path_to_binary} prefs JoinMode=${mode}",
    unless  => "${osx::airport::path_to_binary} prefs JoinMode | grep ${mode}",
    user    => root,
  }
}
