source "https://rubygems.org"

ruby "3.3.7"

gem "rails", "~> 8.0.1"
gem "puma", ">= 5.0"

# Gunakan SQLite untuk development & test
group :development, :test do
  gem "sqlite3", ">= 2.1"
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

# Gunakan PostgreSQL untuk production
group :production do
  gem "pg", "~> 1.2"
end

gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "rack-cors", "~> 2.0"
