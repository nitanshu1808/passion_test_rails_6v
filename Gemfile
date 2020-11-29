source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'image_processing', '~> 1.2'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.0.rc1'
gem 'sass-rails', '>= 6'
gem 'sqlite3', '~> 1.4'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 4.0.1'
end

group :development do
  gem 'amazing_print'
  gem 'brakeman'
  gem 'listen', '~> 3.2'
  gem 'overcommit'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'reek'
  gem 'spring'
  gem 'web-console', '>= 4.0.3'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'json', '~> 2.3.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
