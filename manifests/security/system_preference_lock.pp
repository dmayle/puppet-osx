class osx::security::system_preference_lock($enabled) {
  exec { "/usr/libexec/plistbuddy -c 'Set :rights:system.preferences:shared ${enabled}' /etc/authorization":
    unless => "/usr/libexec/plistbuddy -c 'Print :rights:system.preferences:shared' /etc/authorization | grep ${enabled}",
    user   => root,
  }
}
