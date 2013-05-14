class osx::system::ui_server {
  exec { 'killall SystemUIServer':
    refreshonly => true,
  }
}
