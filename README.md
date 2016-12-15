# asennawordpress
Installs wordpress to linux via puppet


Downloads puppetlabs modules to manage mysql and apache2 installations and creates a user account for wordpress on mysql. Then unpacks and installs wordpress tar-file form http://wordpress.org/latest

Note: overwrites the site.pp file so make a backup if you want to save it.
NoteII: The root password used for mysql installation is unsecure since its stored here as plaintext make sure to change it for actual use. Mysql passwords are managed through site.pp.

##Usage

Clone the module to /etc/puppet/modules run for first time with 

sudo puppet apply -e "class {asennawordpress:}"

then run again with 

sudo puppet apply /etc/puppet/manifests/site.pp

finally restart apache if localhost complains about missing mysql extension with 

sudo service apache2 reload

Then you can enter your details at  http://localhost and start using wordpress.

##Changing mysql password

Change the site.pp file in templates to change mysql password. You can also remove this to lock the root user for mysql.
