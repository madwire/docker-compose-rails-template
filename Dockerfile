FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /workspace
WORKDIR /workspace
ADD Gemfile /workspace/Gemfile
RUN bundle install
ADD . /workspace