# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# ログイン機能
gem 'devise'

# 日本語化
gem 'devise-i18n'
gem 'rails-i18n', '~> 5.1'

# Bootstrap
gem 'bootstrap', '~> 4.3.1'
gem 'devise-bootstrap-views', '~> 1.0'
gem 'jquery-rails'

# Font Awesome導入
gem 'font-awesome-sass'

# ページネーション
gem 'kaminari'

# 画像投稿
gem 'carrierwave',             '1.2.2'
gem 'mini_magick',             '4.7.0'

# ダミーデータ作成
gem 'faker'

# 環境変数
gem 'dotenv-rails'

gem 'counter_culture', '~> 1.8'

gem 'jquery-rails'

# 検索機能
gem 'ransack'

#タグの追加
gem 'acts-as-taggable-on', '~> 6.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'sqlite3'

  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.6.0'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
end

group :test do
  gem 'rspec_junit_formatter'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # postage sql heroku用
  gem 'pg'
  # 画像投稿

  gem 'fog-aws'

  gem 'mysql2', '>= 0.4.4'
end

group :production, :staging do
  gem 'unicorn', '5.4.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
