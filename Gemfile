source 'https://rubygems.org'

ruby '~> 3.4.2'

source 'https://rubygems.org' do
  group :dotenv, :development, :test, :production, :stable do
    gem 'dotenv-rails', '~> 3.1', require: 'dotenv/load'
  end

  # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
  gem 'rails', '~> 8.0.1'
  #
  # added these after initially selecting to skip them
  gem 'solid_cache', '~> 1.0'
  gem 'solid_queue', '~> 1.1'
  #
  # Use mysql as the database for Active Record
  gem 'mysql2', '~> 0.5'
  # Use the Puma web server [https://github.com/puma/puma]
  gem 'puma', '>= 5.0'
  # Build JSON APIs with ease [https://github.com/rails/jbuilder]
  # gem "jbuilder"
  # Use Redis adapter to run Action Cable in production
  # gem "redis", ">= 4.0.1"
  # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
  # gem "bcrypt", "~> 3.1.7"
  # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
  # gem "image_processing", "~> 1.2"
  # Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
  # gem "rack-cors"
  group :development, :test do
    # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
    gem 'brakeman', require: false
    gem 'byebug', '~> 12.0'
    # gem 'parallel_tests', '~> 5.0'
    gem 'pry-rails', '~> 0.3.11'
    gem 'pry-rescue', '~> 1.6'
    gem 'pry-stack_explorer', '~> 0.6.1'
    gem 'rspec-rails', '~> 7.1'
  end

  group :development do
    gem 'listen', '~> 3.9'
    gem 'rack-mini-profiler', '~> 3.3'
    gem 'rubocop', '~> 1.72', require: false
    gem 'rubocop-performance', '~> 1.24'
    gem 'rubocop-rails', '~> 2.30'
    gem 'web-console', '~> 4.2'
  end

  group :test do
    gem 'ci_reporter_rspec', '~> 1.0'
    gem 'database_cleaner', '~> 2.1'
    gem 'factory_bot_rails', '~> 6.4'
    gem 'faker', '~> 3.5'
    gem 'observer', '~> 0.1.2'
    gem 'rspec', '~> 3.13'
    gem 'rspec-collection_matchers', '~> 1.2'
    gem 'shoulda-matchers', '~> 6.4'
    gem 'simplecov', '~> 0.22.0', require: false
    gem 'timecop', '~> 0.9.10'
    gem 'webmock', '~> 3.25'
  end

  gem 'hawk-auth', '~> 0.2.5'
  gem 'mysql-binuuid-rails', '~> 1.3'
  gem 'rest-client', '~> 2.1'
  gem 'tzinfo-data', platforms: %i[windows jruby]
end
