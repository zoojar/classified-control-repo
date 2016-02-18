class puppetmaster {

  class { '::hiera':
    datadir   => '/etc/puppetlabs/puppet/hieradata',
    hierarchy => [
      '%{environment}/%{calling_class}',
      '%{environment}',
      'common',
    ],
    eyaml         => true,
    provider      => 'puppetserver_gem',
    masterservice => 'pe-puppetserver',
  }


}
