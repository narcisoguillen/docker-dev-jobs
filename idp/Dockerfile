FROM ubuntu

MAINTAINER Narciso Guillen "guillen.narciso@gmail.com"

# Update aptitude with new repo
RUN apt-get update

# Install software
RUN apt-get install -y git


FROM node:argon

RUN mkdir -p /idp
WORKDIR /idp

# Clone the conf files into the docker container
RUN git clone -b integration https://<TOKEN>@github.com/tangosource/rails-jobs-idp.git /idp
EXPOSE 3000

RUN timestamp=x
RUN git pull origin integration
RUN npm install
CMD ["npm", "start"]
