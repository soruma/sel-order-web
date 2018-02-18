FROM ruby:2.5

RUN apt-get update -qq \
	&& apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    nodejs \
    wget

RUN wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  apt-key add -
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq \
	&& apt-get install -y --no-install-recommends \
  postgresql-client-9.6 \
  && rm -rf /var/lib/apt/lists/*t

RUN mkdir /mnt/rails
COPY Gemfile /mnt/rails/
COPY Gemfile.lock /mnt/rails/
WORKDIR /mnt/rails

# Bundle install
ENV BUNDLE_JOBS=4 \
    BUNDLE_PATH=/bundle
RUN bundle install
COPY . /mnt/rails

EXPOSE 5000

