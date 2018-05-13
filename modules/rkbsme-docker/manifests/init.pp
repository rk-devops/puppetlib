#install Docker on target machine
class rkbsme-docker {
      package {'docker.x86_64':
      ensure => present,
       }
      
      service {'docker':
      require => Package['docker.x86_64'],
      enable => true,
      ensure => running,
       }
    }
    
