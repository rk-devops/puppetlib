#install java
class rkbsme-java {
	if $::osfamily == 'RedHat' {
		# Needed for update-java-alternatives
		package { 'java-1.8.0-openjdk.x86_64':
		ensure => absent,
		}
	}
}

