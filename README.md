
## Table of Contents

- [Main Characteristics](#main-characteristics)
- [Gems](#gems)
- [Install](#getting-started)




##  Characteristics

- Language: Ruby 2.7+
- Framework: Rails 6+
- Webserver: Puma
- Test Framework: RSpec
- Databases: Postgres & Redis
- Async Processor: Sidekiq
- Serializer: Jbuilder 
- Authentication: devise & devise token
- Admin: Active Admin




## Install Started


4.  .env is where all the db connections are
5.  Run `bundle install`
6.  Run `bundle exec rake db:create`
7.  Run `bundle exec rake db:schema:load`
8.  Run `bundle exec rake db:seed`
9.  run tests with `rspec`
  
10. run `rails s`

## Tests

run test wit `rspec`

## Code Quality

 `rake linters` 


## Admin
**admin /admin/login**
**First Admin User Credentials:**

* Email: admin@example.com
* Password: password

## License

MIT

##Usage
for SignIn

{
"user": {
"email": "user@user.com",
"password": "dtLy9Hh9rhEQg8j"
},
"format": "json"
}

for auth routes ie creating a new job
add auth headers
- content-type: application/json
- access-token:  "add tokens returned from the singin request"
- client: "add client returned from the singin request"
- uid: "add uid returned from the singin request"
