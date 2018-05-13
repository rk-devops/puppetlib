#install Jenkins on target machine
class rkbsme-jenkins {

     exec {'getrepo':
		path => '/bin:/usr/sbin:/usr/bin:/sbin',
		command => 'wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo',
		user => 'root',

       	} 
     exec {'addrepo':
                require => Exec['getrepo'],
                path => '/bin:/usr/sbin:/usr/bin:/sbin',
                command => 'rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key',
                user => 'root',
        }

    package {'jenkins':
	require => Exec['addrepo'],
	ensure => present,
            }

    service {'jenkins':
       require => Package['jenkins'],
       ensure => running,
       enable => true,
      }
}
