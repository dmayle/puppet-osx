class osx::desktop::displayed_items(
  $internal_hard_drives = undef,
  $external_hard_drives = undef,
  $mounted_servers      = undef,
  $removable_media      = undef ) {

  include osx::finder

  if $internal_hard_drives != undef {
    boxen::osx_defaults { 'Show internal drives on the desktop':
      user   => $::boxen_user,
      domain => 'com.apple.finder',
      key    => 'ShowHardDrivesOnDesktop',
      value  => $internal_hard_drives,
      notify => Exec['killall Finder'],
    }
  }

  if $external_hard_drives != undef {
    boxen::osx_defaults { 'Show external drives on the desktop':
      user   => $::boxen_user,
      domain => 'com.apple.finder',
      key    => 'ShowExternalHardDrivesOnDesktop',
      value  => $external_hard_drives,
      notify => Exec['killall Finder'],
    }
  }

  if $mounted_servers != undef {
    boxen::osx_defaults { 'Show mounted servers on the desktop':
      user   => $::boxen_user,
      domain => 'com.apple.finder',
      key    => 'ShowMountedServersOnDesktop',
      value  => $mounted_servers,
      notify => Exec['killall Finder'],
    }
  }

  if $removable_media != undef {
    boxen::osx_defaults { 'Show mounted media on the desktop':
      user   => $::boxen_user,
      domain => 'com.apple.finder',
      key    => 'ShowRemovableMediaOnDesktop',
      value  => $removable_media,
      notify => Exec['killall Finder'],
    }
  }
}
