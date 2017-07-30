class mymodule::service(
  String $service_name   = $::mymodule::service_name,
  String $service_ensure = $::mymodule::service_ensure,
  Boolean $service_enable= $::mymodule::service_enable,
) {
  service { 'ssh-service':
    ensure     => $service_ensure,
    enable     => $service_enable,
    hasstatus  => true,
    hasrestart => true,
    name       => $service_name,
  }
}
