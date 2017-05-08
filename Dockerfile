FROM node:alpine
MAINTAINER Bastian Widmer <b.widmer@dasrecht.net>

RUN apk add --update bash git && rm -rf /var/cache/apk/*

RUN npm install -g tiny-care-terminal
RUN npm install -g git-standup

# We need this in order to make emojis work :)
ENV LANG en_US.UTF-8

ENTRYPOINT exec tiny-care-terminal
