FROM ruby:3.3-slim

# 1) Add toolchain for native gems (json, nokogiri, etc.)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /site

# 2) Copy only dependency files first (better cache)
COPY Gemfile Gemfile.lock* ./
COPY *.gemspec ./

# 3) Install bundler + gems
RUN gem install bundler && bundle install

# 4) Copy the site source
COPY . .

EXPOSE 4000

# 5) Run server at container runtime (not build time)
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--watch", "--force_polling"]
