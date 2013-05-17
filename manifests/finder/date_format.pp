class osx::finder::date_format($format) {

  case $format {
    'relative': { $format_bool = true }
    'absolute': { $format_bool = false }
  }

  exec { [
    "/usr/libexec/plistbuddy -c 'Set :FK_StandardViewSettings:ListViewSettings:useRelativeDates ${format_bool}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :FK_StandardViewSettings:ExtendedListViewSettings:useRelativeDates ${format_bool}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :StandardViewSettings:ListViewSettings:useRelativeDates ${format_bool}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :StandardViewSettings:ExtendedListViewSettings:useRelativeDates ${format_bool}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :ComputerViewSettings:ListViewSettings:useRelativeDates ${format_bool}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
    "/usr/libexec/plistbuddy -c 'Set :ComputerViewSettings:ExtendedListViewSettings:useRelativeDates ${format_bool}' /Users/${::boxen_user}/Library/Preferences/com.apple.finder.plist",
  ]: }
}
