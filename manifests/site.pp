node 'wslinux01.rkad.com' {
        
#        import  'nodes.pp' 
#        include no_httpd_node # This should match with the name of module directory 
#        include rkbsme-tomcat
#        include rkbsme-ntp
#	 include maven
#	 include rkbsme-java
#	 include rkbsme-tomcat
	 include rkbsme-docker
         include rkbsme-jenkins
}

