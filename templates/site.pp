
include asennawordpress

class{  'mysql::server':
         root_password => '!passwordrootmysql!',}

mysql::db { 'wordpress':
  user     => 'wordpressuser',
  password => 'wordpressuserpassword',
  host     => 'localhost',
  grant    => ['ALL'],
}
