# TODO: Let the user pass in readable values
#
class osx::finder::default_search_scope($scope) {

  case $scope {
    'current folder': { $scope_code = 'SCcf' }
    default:          { $scope_code = $scope }
  }

  boxen::osx_defaults { 'Set the Default Scope Used When Using The Search Box in Finder':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXDefaultSearchScope',
    value  => $scope_code,
    notify => Exec['killall Finder'],
  }
}
