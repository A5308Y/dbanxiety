source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem "rails"
gem "sprockets-rails"
gem "puma"
gem "pg"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "bullet"
end

group :development do
  gem "web-console"
  gem "rack-mini-profiler"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
