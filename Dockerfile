FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
ENV BUNDLE_JOBS=4 \
    BUNDLE_PATH=/bundle \
    APP_DIR=/src/app_name/
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
COPY src/Gemfile $APP_DIR
COPY src/Gemfile.lock $APP_DIR
RUN gem install bundler & bundle install
COPY src $APP_DIR
