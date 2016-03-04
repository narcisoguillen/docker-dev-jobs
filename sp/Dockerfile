FROM ubuntu

MAINTAINER Narciso Guillen "guillen.narciso@gmail.com"

# Update aptitude with new repo
RUN apt-get update

# Install software
RUN apt-get install -y git

FROM takeshig/ruby-node

RUN mkdir /sp
WORKDIR /sp

# Clone the conf files into the docker container
RUN git clone -b integration https://<TOKEN>@github.com/tangosource/rails-jobs.git /sp
EXPOSE 3001

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN gem install bundler

RUN timestamp=x
RUN git pull origin integration
RUN bundle install
