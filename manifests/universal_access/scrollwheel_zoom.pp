# Public: Enable use of mousewheel for zooming.
class osx::universal_access::scrollwheel_zoom($enabled = false) {
  boxen::osx_defaults { 'Use mouse wheel (scroll gesture) to zoom':
    user   => $::boxen_user,
    domain => 'com.apple.universalaccess',
    key    => 'closeViewScrollWheelToggle',
    value  => $enabled,
  }
}

class osx::universal_access::enable_scrollwheel_zoom {
  class { 'osx::universal_access::scrollwheel_zoom':
    enabled => true,
  }
}
