# TODO: Let the user pass in readable values
#
class osx::finder::default_location($location) {

  case $location {
    'home directory': { $location_code = 'PfHm' }
    default:          { $location_code = $location }
  }

  boxen::osx_defaults { 'Set the Default Location Used When Opening a New Window in Finder':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'NewWindowTarget',
    value  => $location_code,
  }
}
