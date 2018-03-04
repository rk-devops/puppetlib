class httpd_node {
    package { 'httpd':
    ensure => present,
                    } ->
    file { "/var/www/node":  # Creating Document Root
    ensure => "directory",
    owner  => "apache",
    group  => "apache",
    mode   => 750,
          } ->
    file { '/var/www/node/index.html': # Creating Index file
    ensure  => file,
    content => "Index HTML Is Managed By Puppet- created by Rama",
    mode    => '0644',
            } ->
    file { '/etc/httpd/conf.d/custom_node.conf': # Path to the file on client machine 
    ensure => file,
    mode   => '0600',
    source => 'puppet:///modules/httpd_node/custom_node.conf', # Path to the custom file on puppet server
           } ~>
    service { 'httpd':
    ensure => running,
    enable => true,
                  }
    notify {"Message":
         message => "Applied httpd_node module sucessfully by puppet.",
         withpath => false,
           } 
}

