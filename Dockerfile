FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
ENV BUNDLE_JOBS=4 \
    BUNDLE_PATH=/bundle \
    APP_DIR=/app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
COPY Gemfile $APP_DIR
COPY Gemfile.lock $APP_DIR
RUN gem install bundler & bundle install
WORKDIR $APP_DIR
