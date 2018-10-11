#!/usr/bin/env bash

cd /var/oopla && bundle install

bundle exec rake db:create

mysql -u root -p123123 oopla_development < /vagrant/puphpet/files/sql/generatedb_oopla.sql
mysql -u root -p123123 oopla_development < /vagrant/puphpet/files/sql/data_collections.sql
mysql -u root -p123123 oopla_development < /vagrant/puphpet/files/sql/data_games.sql
mysql -u root -p123123 oopla_development < /vagrant/puphpet/files/sql/data_collection_items.sql