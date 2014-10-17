class ispconfig_postfix_graph {
  include postfix_graph

  file { "/var/www/cluster.${cluster}.$clusterdomain/web/mailstat.php":
    ensure  => present,
    content => template('ispconfig_postfix_graph/mailstat.php.erb'),
    owner   => 'root',
    group   => 'www-data',
    mode    => '0400',
  }
}
