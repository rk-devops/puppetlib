class rkbsme-ntp {

package { 'ntp':
    ensure => 'installed',
  } ~> 

file { '/etc/localtime':
    ensure => 'link',
    target => '/usr/share/zoneinfo/Asia/Calcutta',
  } ->

service { 'ntpd':
     ensure => 'running',
     require => Package['ntp'],   
        }
}
