FROM ubuntu

MAINTAINER Narciso Guillen "guillen.narciso@gmail.com"

# Update aptitude with new repo
RUN apt-get update

# Install software
RUN apt-get install -y git


FROM node:argon

RUN mkdir -p /converse
WORKDIR /converse

# Clone the conf files into the docker container
RUN git clone -b integration https://<TOKEN>@github.com/tangosource/converse-chat.git /converse
EXPOSE 3030

RUN timestamp=x
RUN git pull origin integration
RUN npm install
CMD ["npm", "start"]
