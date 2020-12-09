1. $ rails new pies_api --database=postgresql --api
2. make a new local user called pies_api...
3. $ sudo adduser pies_api 
4. make user root
5. $ sudo usermod -aG sudo pies_api 
5. edit config/database.yml to add information credentials to your local db:
```
test:
  adapter: postgresql
  encoding: unicode
  database: pies_api
  pool: 5
  username: pies_api
  password: hornblower13

development:
  adapter: postgresql
  encoding: unicode
  database: pies_api
  pool: 5
  username: pies_api
  password: hornblower13

production:
  adapter: postgresql
  encoding: unicode
  database: pies_api
  host: localhost
  pool: 5
  username: pies_api
  password: <%= ENV['DATABASE_PASSWORD'] %>
```
5. Set up the db user in pgAdmin:  
![image](https://user-images.githubusercontent.com/1529796/91760410-8fe21d80-eb90-11ea-8f89-ba1f15f8b7bc.png)  
6. Make sure to set user political_fingerprint_api password  
![image](https://user-images.githubusercontent.com/1529796/91763604-10098280-eb93-11ea-8068-1731258db262.png)

7. $ RAILS_ENV=development rails g scaffold Pie title:string pieces:string chunks:string

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'pie', 'pies'
end

https://github.com/rails-api/rails-api/issues/29
https://github.com/gothinkster/rails-realworld-example-app

https://github.com/ansonK/underscore_params
https://thinkster.io/tutorials/rails-json-api/setting-up-users-and-authentication-for-our-api

8. Add gem 'devise'
9. $ rails generate devise:install
10. $ rails generate devise User
11. $ rails g migration AddUsernameToUsers username:string


