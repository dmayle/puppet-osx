class osx::system::host_name($name) {
  exec { [
            "hostname ${name}",
            "scutil --set ComputerName $name",
            "scutil --set HostName $name",
            "scutil --set LocalHostName $name",
         ]:

    user => root,
  }

  boxen::osx_defaults { 'Update Computer NetBIOS Host Name - Part 1':
    user   => root,
    domain => '/Library/Preferences/SystemConfiguration/com.apple.smb.server',
    key    => 'NetBIOSName',
    value  => $name,
  }

  boxen::osx_defaults { 'Update Computer NetBIOS Host Name - Part 2':
    user   => root,
    domain => '/Library/Preferences/SystemConfiguration/com.apple.smb.server',
    key    => 'ServerDecription',
    value  => $name,
  }
}
