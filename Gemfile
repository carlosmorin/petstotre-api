source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
gem 'active_model_serializers', '~> 0.10.0'

group :development, :test do
  gem 'pry', '~> 0.13.1'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  gem 'factory_bot_rails', '~> 6.1'
  gem 'shoulda-matchers', '~> 4.3'
end

group :development do
  gem 'listen', '~> 3.2'
  # linter Gem rubocop
  gem 'rubocop', '~> 0.87.1', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
