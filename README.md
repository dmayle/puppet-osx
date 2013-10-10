# OSX Defaults Module for Puppet

[![Build Status](https://travis-ci.org/boxen/puppet-osx.png?branch=master)](https://travis-ci.org/boxen/puppet-osx)

Provides classes for setting various defaults in Mac OS X. Also provides a means
to set a "recovery message" to be displayed on the login and lock screens.

## Recovery Message Usage

Displays the given message on the lock and login screens.

```puppet
osx::recovery_message { 'If this Mac is found, please call 123-456-7890': }
```

## One-Shot Settings

Just `include` any of these in your manifest.

### Global Settings

* `osx::global::disable_key_press_and_hold` - disable press-and-hold for
  accented character entry
* `osx::global::enable_keyboard_control_access` - enables the keyboard for
  navigating controls in dialogs
* `osx::global::expand_print_dialog` - expand the print dialog by default
* `osx::global::expand_save_dialog` - expand the save dialog by default
* `osx::global::disable_remote_control_ir_receiver` - disable remote control infrared receiver
* `osx::global::disable_autocorrect` - disables spelling autocorrection

### Dock Settings

* `osx::dock::2d` - use the old flat dock style
* `osx::dock::clear` - ensures the dock only contains apps that are running
* `osx::dock::disable` - disable the dock by setting a long autohide-delay
* `osx::dock::dim_hidden_apps` - dims icons of hidden apps
`osx::dock::autohide` - automatically hide the dock

```puppet
class { 'osx::dock::autohide':
  enabled => true,
  delay   => 0,
}
```

`osx::dock::hidden_app_dimming` - dims icons of hidden apps

```puppet
class { 'osx::dock::hidden_app_dimming':
  enabled => true
}
```

`osx::dock::icon_bounce` - toggle bouncing application icon on launch or on activity

```puppet
class { 'osx::dock::icon_bounce':
  on_app_launch => true,
  on_app_activity => true,
}
```

`osx::dock::icon_size` - set size of icons in dock in pixels

```puppet
class { 'osx::dock::icon_size':
  size => 36
}
```

`osx::dock::indicator_lights` - toggle the indicator lights below running applications

```puppet
class { 'osx::dock::indicator_lights':
  enabled => false
}
```

`osx::dock::itunes_notifications` - toggle the indicator lights below running applications

```puppet
class { 'osx::dock::itunes_notifications':
  enabled => false
}
```

`osx::dock::magnification` - toggles magnification of icons and sets icon magnification size

```puppet
class { 'osx::dock::magnification':
  enabled => true,
  magnified_icon_size => 48,
}
```

`osx::dock::only_show_running_apps` - only show running applications in the dock

```puppet
class { 'osx::dock::only_show_running_apps':
  enabled => true
}
```

`osx::dock::orientation` - set the position of the dock relative to the desktop to on of the following values:

* 'top'
* 'bottom'
* 'right'
* 'left'

```puppet
class { 'osx::dock::orientation':
  orientation => 'left'
}
```

`osx::dock::style` - set the style of the dock to 2D or 3D

```puppet
class { 'osx::dock::style':
  style => '2D'
}
```

### Energy Settings

`osx::energy::disk_sleep` - set time until disk sleep on battery and plugged in

```puppet
class { 'osx::energy::disk_sleep':
  on_battery => 100,
  when_plugged_in => 100,
}
```

`osx::energy::display_sleep` - set time until display sleep on battery and plugged in

```puppet
class { 'osx::energy::display_sleep':
  on_battery => 100,
  when_plugged_in => 100,
}
```

`osx::energy::hibernation` - set time until hibernation on battery and plugged in

```puppet
class { 'osx::energy::hibernation':
  on_battery => 100,
  when_plugged_in => 100,
}
```

`osx::energy::sleep` - set time until sleep on battery and plugged in

```puppet
class { 'osx::energy::sleep':
  on_battery => 100,
  when_plugged_in => 100,
}
```

### Finder Settings

`osx::finder::unhide_library` - unsets the hidden flag on ~/Library

`osx::finder::allow_quit` - allow quit finder

```puppet
class { 'osx::finder::allow_quit':
  enabled => true
}
```

`osx::finder::animations` - enable finder animations

```puppet
class { 'osx::finder::animations':
  enabled => false
}
```

`osx::finder::date_format` - set finder date format to 'relative' or 'absolute'

```puppet
class { 'osx::finder::date_format':
  format => 'relative'
}
```

`osx::finder::default_file_view_mode` - set finder default file view mode to one of the following:

* list

Not yet implemented:

* icon
* column
* cover flow

```puppet
class { 'osx::finder::default_file_view_mode':
  mode => 'list'
}
```

`osx::finder::default_location` - set finder default view location to one of the following:

* 'home directory'

```puppet
class { 'osx::finder::default_location':
  location => 'home directory'
}
```

`osx::finder::default_search_scope` - set finder default scope when using the search box in finder to one of the following:

* 'home directory'

```puppet
class { 'osx::finder::default_search_scope':
  scope => 'current folder'
}
```

`osx::finder::file_extensions` - set finder to display all file extensions and warn when changing the file extension

```puppet
class { 'osx::finder::file_extensions':
  display_all => true,
  warn_on_change => false,
}
```

`osx::finder::icon_arrangement` - set finder icon arrangement

```puppet
class { 'osx::finder::icon_arrangement':
  style => 'name'
}
```

`osx::finder::icon_previews` - enable icon previews in finder

```puppet
class { 'osx::finder::icon_previews':
  enabled => false
}
```

`osx::finder::path_bar` - enable path bar in finder

```puppet
class { 'osx::finder::path_bar':
  enabled => false
}
```

`osx::finder::posix_title_path` - enable full POSIX path in finder title bar

```puppet
class { 'osx::finder::posix_title_path':
  enabled => true
}
```

`osx::finder::quicklook_text_selection` - enable text selection in QuickLook Window

```puppet
class { 'osx::finder::quicklook_text_selection':
  enabled => true
}
```

`osx::finder::springing` - enable springing and set spring delay

```puppet
class { 'osx::finder::springing':
  enabled => true,
  delay => 0,
}
```

`osx::finder::status_bar` - display status bar in finder

```puppet
class { 'osx::finder::status_bar':
  enabled => true,
}
```

### Firewall

`osx::firewall::auto_allow_signed_applications` - allow signed apps to automatically accept incoming connections

```puppet
class { 'osx::firewall::auto_allow_signed_applications':
  enabled => true,
}
```

`osx::firewall::block_all_incoming_connections` - block all non-essential incoming connections

```puppet
class { 'osx::firewall::block_all_incoming_connections':
  enabled => true,
}
```

`osx::firewall::logging_mode` - set firewall logging mode

```puppet
class { 'osx::firewall::logging_mode':
  enabled => true,
}
```

`osx::firewall::stealth_mode` - set whether firewall responds to innocuous requests like PING

```puppet
class { 'osx::firewall::stealth_mode':
  enabled => true,
}
```

### iTunes

`osx::itunes::automatic_device_backup_when_syncing` - set iTunes to automatically back up device on sync

```puppet
class { 'osx::itunes::automatic_device_backup_when_syncing':
  enabled => true,
}
```

`osx::itunes::automatic_sync` - set iTunes to automatically sync devices when connected

```puppet
class { 'osx::itunes::automatic_sync':
  enabled => true,
}
```

### Universal Access Settings

* `osx::universal_access::ctrl_mod_zoom` - enables zoom by scrolling while
  holding Control
* `osx::universal_access::enable_scrollwheel_zoom` - enables zoom using the
  scroll wheel

### Miscellaneous Settings

* `osx::disable_app_quarantine` - disable the downloaded app quarantine
* `osx::no_network_dsstores` - disable creation of .DS_Store files on network
  shares
* `osx::software_update` - download and install software updates

## Customizable Settings

These settings can be used like one-shots or customized.

`osx::global::key_repeat_delay` - the amount of time (in ms) before a key starts
  repeating

```puppet
include osx::global::key_repeat_delay

class { 'osx::global::key_repeat_delay':
  delay => 35
}
```

`osx::global::key_repeat_rate` - the amount of time (in ms) before key repeat
  'presses'

```puppet
include osx::global::key_repeat_rate

class { 'osx::global::key_repeat_rate':
  rate => 0
}
```

`osx::global::natural_mouse_scrolling` - enable/disable 'natural' mouse scrolling. *Requires re-login for new settings to initialize.*

```puppet
# Set the default value (enabled=true)
include osx::global::natural_mouse_scrolling

# ... or set your own
class { 'osx::global::natural_mouse_scrolling':
  enabled => false
}
```


`osx::universal_access::cursor_size` - the amount the cursor will be zoomed

```puppet
include osx::universal_access::cursor_size

class { 'osx::universal_access::cursor_size':
  zoom => 1.5
}
```

## Airdrop

```puppet
class { 'osx::aidrop::all_interfaces':
  allow => true
}
```

## Airport

`osx::airport::disconnect_on_logout` - disconnect from airport on logout

```puppet
class { 'osx::airport:disconnect_on_logout':
  enabled => true
}
```

`osx::airport::join_mode` - set airport join mode to one of the following:

* Automatic
* Preferred
* Ranked
* Recent
* Strongest

```puppet
class { 'osx::airport::join_mode':
  mode => 'Automatic'
}
```

`osx::airport::join_mode_fallback` - set airport join mode fallback to one of the following:

* Prompt
* JoinOpen
* KeepLooking
* DoNothing

```puppet
class { 'osx::airport::join_mode_fallback':
  mode => 'Prompt'
}
```

`osx::airport::remember_recent_networks` - toggle airport's "Remember Recent Networks" preference

```puppet
class { 'osx::airport::remember_recent_networks':
  enabled => true
}
```

`osx::airport::require_password_for_computer_to_computer_networks` - toggle airport's "Require Password for Computer-to-Computer Networks" preference

```puppet
class { 'osx::airport::require_password_for_computer_to_computer_networks':
  enabled => true
}
```

`osx::airport::require_password_to_change_networks` - toggle airport's "Require Password to Change Networks" preference

```puppet
class { 'osx::airport::require_password_to_change_networks':
  enabled => true
}
```

`osx::airport::require_password_to_toggle_power` - toggle airport's "Require Password to Turn Wi-Fi On or Off" preference

```puppet
class { 'osx::airport::require_password_to_toggle_power':
  enabled => true
}
```

## Appearance

`osx::appearance::colors` - set main UI and highlight colors

```puppet
class { 'osx::appearance::colors':
  main      => 'graphite',
  highlight => 'graphite'
}
```

`osx::appearance::font_rendering_mode` - set rendering mode used to display text

```puppet
class { 'osx::appearance::font_rendering_mode':
  mode => 1
}
```

`osx::appearance::sidebar_icons` - set the size of the icons in the sidebar

```puppet
class { 'osx::appearance::sidebar_icons':
  size => 'small'
}

class { 'osx::appearance::sidebar_icons':
  size => 'medium'
}

class { 'osx::appearance::sidebar_icons':
  size => 'large'
}
```

## Desktop

`osx::desktop::displayed_items` - display items on desktop

```puppet
class { 'osx::desktop::displayed_items':
    internal_hard_drives => true,
    external_hard_drives => true,
    mounted_servers => true,
    removable_media => true,
}
```

## Dialogs

`osx::dialogs::auto_expanding_print_dialog` - expand print panel by default

```puppet
class { 'osx::dialogs::auto_expanding_print_dialog':
  enabled => true
}
```

`osx::dialogs::auto_expanding_save_dialog` - expand save panel by default

```puppet
class { 'osx::dialogs::auto_expanding_save_dialog':
  enabled => true
}
```

`osx::dialogs::file_view_mode` - set default file dialog view mode

```puppet
class { 'osx::dialogs::file_vew_mode':
  mode => 'list'
}
```

## Disk Images

`osx::disk_images::auto_mount` - set disk images to auto-mount

```puppet
class { 'osx::disk_images::auto_mount':
  enabled => true
}
```

`osx::disk_images::verification` - set verification of disk images

```puppet
class { 'osx::disk_images::verification':
  enabled => true
}
```

## Disk Utility

`osx::disk_utility::advanced_image_options` - toggle advanced image options in disk utility

```puppet
class { 'osx::disk_utility::advanced_image_options':
  enabled => true
}
```

`osx::disk_utility::hidden_partitions` - toggle visibility of hidden partitions

```puppet
class { 'osx::disk_utility::hidden_partitions':
  visible => true
}
```

## Displays

`osx::displays::auto_brightness_adjustment` - toggle ambient light-dependent automatic brightness adjustment

```puppet
class { 'osx::displays::auto_brightness_adjustment':
  enabled => true
}
```

## Required Puppet Modules

* boxen
* property_list_key

## Developing

Write code.

Run `script/cibuild`.
