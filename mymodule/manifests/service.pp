class mymodule::service(
  String $service_name = $::mymodule::service_name,
) {
  service { 'ssh-service':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    name       => $service_name,
  }
}
