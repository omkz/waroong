# Rails-Store!

Rails-Store is an open-source e-commerce solution based on Ruby on Rails 6.

![Screenshot](https://raw.githubusercontent.com/omkz/rails-store/master/public/Screenshot.png)

## Tech Stack

- Ruby 2.6.0  
- Ruby on Rails 6.x.x
- PostgreSQL 9.5
- jQuery
- Gem: 
    -  [devise](https://github.com/plataformatec/devise) | Authentication
    -  [pg](https://github.com/ged/ruby-pg) | PostgreSQL library for Ruby

## Installation

### Requirements

Before you get started, the following needs to be installed:
  * **Ruby**. Version 2.6.0 is currently used and we don't guarantee everything works with other versions. If you need multiple versions of Ruby, [rbenv](https://rbenv.org) is recommended.
  * [**RubyGems**](http://rubygems.org/)
  * **Bundler**: `gem install bundler`
  * [**Git**](http://help.github.com/git-installation-redirect)
  * **A database**. Only PostgreSQL 9.5 has been tested, so we give no guarantees that other databases (e.g. MySQL) work. If you're using OS X and have Homebrew installed, install it with `brew install postgresql`
  
### Setting up the development environment

1. Get the code. Clone this git repository:

  ```bash
  git clone git://github.com/omkz/rails-store.git
  cd rails-store
  ```

1. Install the required gems by running the following command in the project root directory:

  ```bash
  bundle install
  ```

1. Create and initialize the database:

  ```bash
  bundle exec rake db:migrate
  ```

1. Start the development server:

  ```bash
  rails s
  ```

## If you want to contribute

The best way to contribute is to do one of the following :
* Creating tests
* Refactoring
* Coding features
* Correcting logged issues
* Correcting my English! (I'm an Indonesian, so don't hesitate to fix my sentences or whole paragraphs.)

## License

Rails-Store is open source under the MIT license. See [LICENSE](LICENSE) for details.
