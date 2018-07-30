node "svm5.llnl.gov" {

file {'/etc/hosts':
    source => '/etc/puppet/manifests/hosts',
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode  => "644",
#    validate_cmd  =>  '/etc/puppet/manifests/hosts'
}

file {'/etc/resolv.conf':
    source => '/etc/puppet/manifests/resolv.conf',
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode  => "644",
#    validate_cmd  =>  '/etc/puppet/manifests/resolv.conf'
}

package {'git':
    ensure => "latest",
    name  => git
}


} # End node svm5.llnl.gov

