source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem "fog-aws"
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'haml-rails'
gem 'html2haml'
# gem 'bootstrap-sass', '~> 3.3.6'
# gem 'sass-rails', '>= 3.2'
gem 'font-awesome-rails'
gem 'materialize-sass'
gem 'material_icons'
gem 'ionicons-rails'
gem 'simple-line-icons-rails'
gem 'mail_form'
gem 'figaro'
gem 'pandoc-ruby'
gem 'sitemap_generator'
gem 'geocoder'
gem 'devise'
gem 'activeadmin'
gem 'mini_magick'
gem 'delayed_job_active_record'
gem 'carrierwave'
gem 'owlcarousel-rails'
# gem 'cloudinary'
gem 'lightbox2-rails'
gem 'bootstrap'
gem 'lightbox-bootstrap-rails', '5.1.0.1'
gem 'therubyracer'
gem 'aws-ses', '~> 0.4.4', require: 'aws/ses'


group :development, :test do
  gem "letter_opener"
  gem 'pry-byebug'
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
end

group :test do
  gem 'factory_girl_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'faker'
  gem 'database_cleaner'
end

group :development do
  gem 'capistrano', '~> 3.7', '>= 3.7.1'
  gem 'capistrano-rails'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano3-delayed-job', '~> 1.0'
  # gem 'capistrano-rvm'
  gem 'capistrano-rbenv', '~> 2.1'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
