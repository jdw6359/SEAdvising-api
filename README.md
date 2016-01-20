# SEAdvising-api
The RESTful service powering RIT's SEAdvising Application

## Dependencies
* 

## Getting Started
Install the `Bundler` gem into your default rvm gemset

`$ gem install bundler`

Use bundler to install all of the gem dependencies listed in `.Gemfile`

`$ bundle install`

To start the application (will run on port 3000 by default):

`$ rails s(erver)`

To enter into the rails console (helpful for examining runtime behavior of ActiveRecord objects):

`$ rails c(onsole)`

## Database
Both the development and testing environments use sqlite as the default database.

If you would like to use a different database, specify the database adapter and provide the connection string in `config/database.yml`.

_You may have to install database adapter(s) as needed_

## Testing
This project relies on testing the models, routes, and controllers.

You may run the entire test suite:

`$ rake test`

You may also choose to run only certain types of tests:

`$ rake test:[models, controllers]`

