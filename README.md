# SEAdvising-api
The RESTful service powering RIT's SEAdvising Application

## Getting Started

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

