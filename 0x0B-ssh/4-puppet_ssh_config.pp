# client SSH configuration file

file_line { 'hbtn':
path => '/etc/ssh/ssh_config',
line => 'IdentityFile ~/.ssh/school',
}

file_line { 'psswd':
ensure => present,
path   => '/etc/ssh/ssh_config',
line   => 'PasswordAuthentication no',
match  => 'PasswordAuthentication yes',
}
