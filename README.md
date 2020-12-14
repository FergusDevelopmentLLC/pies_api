# Success Pies (Back end API)

This is the backend for Success pies, a tool to help you keep track of your goals in a visual manner.

## Installation

1. You must have a local [Postgres](https://www.postgresql.org/) development database server running.
2. Clone this repository.
3. Create a system user named pies_api to act as the user to connect to the database for this app. Note password used for pies_api user here.

```
$ sudo adduser hero_api
```
4. Make the user be a root user.
```
$ sudo usermod -aG sudo pies_api
```
5. Impersonate the postgres user on your system and create the pies_api database and pies_api database user. The database is also called pies_api. 
```
$ su — postgres
$ createuser pies_api
$ createdb pies_api
```
6. Provide the privileges to pies_api user in psql, for the pies_api database.
```
postgres@computer:~$ psql
postgres=# alter user pies_api with encrypted password '<password for pies_api>';
postgres=# grant all privileges on database pies_api to pies_api;

```
7. Update config/database.yml with your database credentials, similar to this this:
```
development:
  adapter: postgresql
  encoding: unicode
  database: pies_api
  pool: 2
  username: pies_api
  password: <password for pies_api>
  host: localhost
  port: 5432
```
8. Start the backend app.

```
$ cd pies_api
$ RAILS_ENV=development rails s
```

## Front end repository

This back end drives the following React/Redux based front end:  
https://github.com/FergusDevelopmentLLC/pies_fe

## Contributing Bugfixes or Features

* Fork the this repository
* Create a local development branch for the bugfix; I recommend naming the branch such that you'll recognize its purpose.
* Commit a change, and push your local branch to your github fork
* Send me pull request for your changes to be included

## License

Success pies is licensed under the MIT license. (http://opensource.org/licenses/MIT)