class osx::finder::icon_previews($enabled) {
  include osx::finder

  exec { [
    "/usr/libexec/plistbuddy -c 'Set :FK_StandardViewSettings:IconViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :FK_StandardViewSettings:ListViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :FK_StandardViewSettings:ExtendedListViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :StandardViewSettings:IconViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :StandardViewSettings:ListViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :StandardViewSettings:ExtendedListViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :ComputerViewSettings:IconViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :ComputerViewSettings:ListViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :ComputerViewSettings:ExtendedListViewSettings:showIconPreview ${enabled}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
  ]:

    notify => Exec['Remove All .DS_Store Files'],
  }

  boxen::osx_defaults { 'Remove All Existing Icon Previews':
    user   => $::boxen_user,
    key    => 'FXRecentFolders',
    domain => 'com.apple.finder',
    type   => 'array',
    value  => '()',
    notify => Exec['killall Finder'],
  }
}
