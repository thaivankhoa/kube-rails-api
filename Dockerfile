FROM ruby:3.1-slim

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends build-essential curl libyaml-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock* ./
RUN bundle config set --local deployment 'true' && \
    bundle config set --local without 'development test' && \
    bundle install

COPY . .

ENV RAILS_ENV=production
ENV PORT=3000

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
