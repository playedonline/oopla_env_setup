#!/bin/bash -x

rvm install ruby-2.1.10

if [[ ! -f /var/yepi/config/database.yml ]]; then
	cat <<EOF > /var/yepi/config/database.yml
# MySQL. Versions 5.1.10 and up are supported.
#
# Install the MySQL driver
#   gem install mysql2
#
# Ensure the MySQL gem is defined in your Gemfile
#   gem 'mysql2'
#
# And be sure to use new-style password hashing:
#   https://dev.mysql.com/doc/refman/5.7/en/password-hashing.html
#
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  host: localhost
  port: 3306
  username: root
  password: 123123

development:
  <<: *default
  database: yepi_development

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: yepi_test

# As with config/secrets.yml, you never want to store sensitive information,
# like your database password, in your source code. If your source code is
# ever seen by anyone, they now have access to your database.
#
# Instead, provide the password as a unix environment variable when you boot
# the app. Read http://guides.rubyonrails.org/configuring.html#configuring-a-database
# for a full rundown on how to provide these environment variables in a
# production deployment.
#
# On Heroku and other platform providers, you may have a full connection URL
# available as an environment variable. For example:
#
#   DATABASE_URL="mysql2://myuser:mypass@localhost/somedatabase"
#
# You can use this database configuration with:
#
#   production:
#     url: <%= ENV['DATABASE_URL'] %>
#
production:
  <<: *default
  database: yepi_production
  username: yepi
  password: <%= ENV['SIGNALER_DATABASE_PASSWORD'] %>
EOF

fi

bash -l << EOF
rvm use 2.1.10 --default
gem install bundler

cd /var/yepi && bundle install

bundle exec rake db:create
EOF

mysql -u root -p123123 yepi_development < /vagrant/puphpet/files/sql/schema.sql
mysql -u root -p123123 yepi_development < /vagrant/puphpet/files/sql/collections.sql
mysql -u root -p123123 yepi_development < /vagrant/puphpet/files/sql/games.sql
mysql -u root -p123123 yepi_development < /vagrant/puphpet/files/sql/collection_items.sql
