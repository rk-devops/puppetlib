node 'wslinux01.rkad.com' {
        
        import "nodes.pp" 
        include httpd_node # This should match with the name of module directory 
}

