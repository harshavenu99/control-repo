node 'node3' {
    include base
    class {'::tomcat':
        xms            => '60m',
        xmx            => '120m',
        user           => 'tomcat',
        group          => 'tomcat',
        service_status => 'running',
    }
    tomcat::deploy { 'sysfoo':
        deploy_url => 'https://1-115473689-gh.circle-artifacts.com/0/tmp/circle-artifacts.aFBllSS/sysfoo.war',
        checksum_value => '1528a0843ed0137678309ce4a7e4f562',
    }
  
}
