#!/bin/bash

#Starting the mysql service
service mysql start

#Creating and migrating the database
bundle exec rake db:create

bundle exec rake db:migrate

#Running the rails server
bin/rails server