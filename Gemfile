source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 6.1.4.4'
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem 'jbuilder'
gem 'bootsnap', require: false
gem "administrate", '~> 0.16'
gem 'administrate-field-active_storage'
gem 'stripe'
gem 'image_processing', '~> 1.2'
gem 'devise'
gem 'mailcatcher'
gem "redis", "~> 4.0"
gem "sprockets-rails"
gem "turbo-rails"
gem "jsbundling-rails", "~> 1.0"
gem "cssbundling-rails", "~> 1.0"
gem "stimulus-rails", "~> 1.0"

group :development, :test do
  gem 'dotenv-rails'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 5.0.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

