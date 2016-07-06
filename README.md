FizzBuzz UI
===========

Sketched out Rails App to serve non authenticated json api for fizz buzz data and hold favorites.

Rule
--------

* FizzBuzz rules: number / 3 = Fizz, number / 5 = Buzz, number / 5 or 3 = FizzBuzz, otherwise number = number

* Homepage displays 1 through 100 results

* Pagination

* Can change page size - default 100

* Max number 100,000,000,000

* Can mark favorite numbers

* Favorite numbers are displayed as such

Using this repo
---------------

Clone the repo

    $ git clone <url>

Install everything and setup database

    $ bundle install

    $ bundle exec rake db:setup

Spin up the dev environment and start playing

    $ bundle exec guard

Vist the UI

    http://fizzbuzz.127-0-0-1.org.uk:3000/

Guard will run the tests and linter for you and spin up the http server, if you want you do these steps manually

    $ bundle exec rubocop

    $ bundle exec rspec

    $ bundle exec rails s
