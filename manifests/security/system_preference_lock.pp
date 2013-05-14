class osx::security::system_preference_lock($enabled) {
  exec { "/usr/libexec/plistbuddy -c 'Set :rights:system.preferences:shared ${enabled}' /etc/authorization":
    user   => root,
  }
}
