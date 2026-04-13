# frozen_string_literal: true

source "https://rubygems.org"

# Use the local Minima 3.0.0.dev gemspec for Minima 3 features (dark skin,
# social_links, etc.). Minima 3.x is not yet published on RubyGems (only 2.5.x is).
gemspec

gem "jekyll", "~> 4.4"

group :jekyll_plugins do
  gem "jekyll-sitemap"
end

# Windows: native file-watcher and timezone data
platforms :mingw, :x64_mingw, :mswin do
  gem "wdm", "~> 0.1"
  gem "tzinfo-data"
end
