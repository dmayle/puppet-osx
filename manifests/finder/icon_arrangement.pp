class osx::finder::icon_arrangement($style) {
  exec { [
    "/usr/libexec/plistbuddy -c 'Set :DesktopViewSettings:IconViewSettings:arrangeBy ${style}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :FK_StandardViewSettings:IconViewSettings:arrangeBy ${style}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :StandardViewSettings:IconViewSettings:arrangeBy ${style}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :ComputerViewSettings:IconViewSettings:arrangeBy ${style}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
  ]:

    notify => [
      Exec['killall Finder'],
      Exec['Remove All .DS_Store Files'],
    ]
  }
}
