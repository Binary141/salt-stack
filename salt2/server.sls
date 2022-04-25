# install the nfs server
apache-install:
  pkg:
    - name: apache2
    - installed

# Download the pokemon application, extract, remove the target /var/www/html/water dir, move and delete the .tgz file
download-extract-pokemon-image:
  cmd.run:
    - name: wget http://cit.dixie.edu/it/3100/examples.examples/WaterPokemon-s19.tgz && tar -xvf WaterPokemon-s19.tgz && rm     -rf /var/www/html/water && mv water/ /var/www/html && rm -f WaterPokemon-s19.tgz

# Configure /var/www/html/water/config.php
config-php:
  cmd.run:
    - name: echo "<?php /************************* * EDIT THESE LINES */ \$db_host = 'localhost';\$db_user = 'foouser';\$db_pass = 'foopassword';\$db_name = 'pokemondb';/* * EDIT THESE LINES *************************/?>" > /var/www/html/water/config.php

update-apt:
  cmd.run:
    - name: apt-get update

mysql-client-install:
  pkg:
    - name: mysql-client
    - installed

mysql-server-install:
  pkg:
    - name: mysql-server
    - installed

mysql-install:
  pkg:
    - name: php-mysql
    - installed

apache-php-install:
  pkg:
    - name: libapache2-mod-php
    - installed

python-mysqldb-install:
  pkg:
    - name: python3-mysqldb
    - installed

create_db:
  mysql_database.present:
    - connection_unix_socket: /var/run/mysqld/mysqld.sock
    - name: pokemondb

foouser:
  mysql_user.present:
    - host: localhost
    - password: foopassword

grant-user:
  mysql_grants.present:
    - grant: all privileges
    - database: pokemondb.*
    - user: foouser
    - host: localhost
