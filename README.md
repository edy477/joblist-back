
## Table of Contents

- [Main Characteristics](#main-characteristics)
- [Gems](#gems)
- [Install](#getting-started)




##  Characteristics

- Language: Ruby 2.7.2+
- Framework: Rails 6.0.3+
- Webserver: Puma
- Test Framework: RSpec
- Databases: Postgres & Redis
- Async Processor: Sidekiq
- Serializer: Jbuilder
- Authentication: devise
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