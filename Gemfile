source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

# #1
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# #2
group :development do
  gem 'sqlite3'
  gem 'pry-rails', '~> 0.3.4'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
#bootstrap-sass is a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
# Used for encrypting User passwords
gem 'bcrypt'
# provides an elegant solution for handling sensitive data with environment variables
gem 'figaro', '1.0'
