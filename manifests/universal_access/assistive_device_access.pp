class osx::universal_access::assistive_device_access($enabled) {
  if $enabled {
    exec { 'Enable access for assistive devices (Part 1)':
      command => "echo -n 'a' | tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1",
      user    => root,
    }

    exec { 'Enable access for assistive devices (Part 2)':
      command => "chmod 444 /private/var/db/.AccessibilityAPIEnabled",
      user    => root,
    }
  }
  else {
    # TODO: Disabling Assitive Device Access Commands
    # exec { 'Enable access for assistive devices (Part 1)':
    #   command => "echo -n 'a' | tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1",
    #   user    => root,
    # }

    # exec { 'Enable access for assistive devices (Part 2)':
    #   command => "chmod 444 /private/var/db/.AccessibilityAPIEnabled",
    #   user    => root,
    # }
  }
}
