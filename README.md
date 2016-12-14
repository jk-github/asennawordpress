# asennawordpress
Installs wordpress to linux via puppet

Note: overwrites the site.pp file so make a backup if you want to save it.

##Usage

Clone the module to /etc/puppet/modules run for first time with 

sudo puppet apply -e "class {asennawordpress:}"

then run again with 

sudo puppet apply /etc/puppet/manifests/site.pp

finally restart apache if localhost complains about missing mysql extension with 

sudo service apache2 reload

Then you can enter your details at  http://localhost and start using wordpress.
