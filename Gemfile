# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby "2.5.1"
gem "activeadmin"
gem "activerecord-import"
gem "coffee-rails", "~> 4.2"
gem "devise"
# erbをhamlに変換するコマンド：rails haml:erb2haml
gem "bootsnap", ">= 1.1.0", require: false
gem "draper"
gem "haml-rails"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "pg", ">= 0.18", "< 2.0"
gem "pry-byebug"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.1"
gem "rails-i18n"
gem "redis"
gem "redis-namespace"
gem "redis-rails"
gem "sass-rails", "~> 5.0"
gem "sidekiq"
gem "sidekiq-cron"
gem "sinatra", require: false
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "annotate"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "letter_opener"
  gem "letter_opener_web"
  gem "rails-controller-testing"
  gem "rails-erd"
  gem "rspec-rails"
end

group :development do
  gem "bullet"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rails_best_practices", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "rspec"
  gem "rubocop", require: false
  gem "selenium-webdriver"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
