class mymodule::install(
  String $package_name = $::mymodule::package_name,
  String $ensure       = $::mymodule::ensure,
) {
  package { 'ssh-package':
    ensure   =>  $ensure,
    name     =>  $package_name,
  }

}
