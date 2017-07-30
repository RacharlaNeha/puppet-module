class mymodule::install(
  String $package_name = $::mymodule::package_name,
) {
  package { 'ssh-package':
    ensure   =>  present,
    name     =>  $package_name,
  }

}
