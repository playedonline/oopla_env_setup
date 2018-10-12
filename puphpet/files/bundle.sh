#!/bin/bash -x
cd /var/oopla && bundle install

bundle exec rake db:create

mysql -u oopla -p123123 oopla_development < /vagrant/puphpet/files/sql/generatedb_oopla.sql
mysql -u oopla -p123123 oopla_development < /vagrant/puphpet/files/sql/data_collections.sql
mysql -u oopla -p123123 oopla_development < /vagrant/puphpet/files/sql/data_games.sql
mysql -u oopla -p123123 oopla_development < /vagrant/puphpet/files/sql/data_collection_items.sql