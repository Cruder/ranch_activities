source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Server
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'
# gem 'capistrano-rails', group: :development

# Database
gem 'pg', group: %i(production)
gem 'sqlite3', group: %i(test development)

# Assets
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'material_icons'
gem 'materialize-sass'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  # Tests
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Debug
  gem 'pry-rails'
  gem 'web-console', '>= 3.3.0'

  # Cache
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Heroku
ruby '2.4.1'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i(mingw mswin x64_mingw jruby)
