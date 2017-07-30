function mymodule::data {
  $base_params = {
    'mymodule::ensure'         =>  'present',
    'mymodule::service_enable' =>  true,
    'mymodule::service_ensure' =>  'running',
  }
  case $facts['os']['family'] {
    'Debian': {
        $os_params = {
          'mymodule::package_name' => 'openssh-server',
          'mymodule::service_name' => 'ssh',
        }
     }
    'RedHat': {
        $os_params = {
          'mymodule::package_name' => 'openssh-server',
          'mymodule::service_name' => 'sshd',
        }
     }
     default: {
        fail("${facts['operatingsystem']} is not supported")
     }
  }
  
  
  $base_params + $os_params

}
