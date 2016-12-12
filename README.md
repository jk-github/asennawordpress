# asennawordpress
Installs wordpress via puppet

##Usage

Clone the module to /etc/puppet/modules run first with 

sudo puppet apply -e "class {asennawordpress:}"

then run again with 

sudo puppet apply /etc/puppet/manifests/site.pp

finally restart apache with 

sudo service apache2 reload

if localhost complains about missing mysql extension
