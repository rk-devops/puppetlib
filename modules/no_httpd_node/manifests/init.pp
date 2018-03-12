class no_httpd_node {
    package { 'httpd':
    ensure => absent,
                    } ->
    file { "/var/www/node":  # Creating Document Root
    ensure => absent,
         } ->
    file { '/var/www/node/index.html': # Creating Index file
    ensure  => absent,
         } ->
    file { '/etc/httpd/conf.d/custom_node.conf': # Path to the file on client machine 
    ensure => absent,
         } ~>
    notify {"Message":
         message => "Uninstalled httpd_node module sucessfully by puppet.",
         withpath => false,
          } 
}

