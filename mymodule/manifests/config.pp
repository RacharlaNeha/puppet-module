class mymodule::config(
  $permit_root_login = $::mymodule::permit_root_login,
) {
  file { '/etc/ssh/sshd_config':
    ensure   =>  file,
    mode     =>  '0600',
    owner    =>  'root',
    group    =>  'root',
    content  =>  template('mymodule/sshd_config.erb')
  }
}
