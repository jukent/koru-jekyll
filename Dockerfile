FROM node:8.15.0 AS node

ARG REGISTRY
ARG AUTH
ARG EMAIL
ARG ALWAYSAUTH

ENV REGISTRY $REGISTRY
ENV AUTH ${AUTH}
ENV EMAIL ${EMAIL}
ENV ALWAYS_AUTH ${ALWAYS_AUTH}

COPY /_includes /project/_includes
COPY /_layouts /project/_layouts
COPY /_sass /project/_sass
COPY /assets /project/assets
COPY package.json package-lock.json index.md Gemfile Gemfile.lock jekyll-koru.gemspec /project/

WORKDIR /project

RUN npm config set registry $REGISTRY
RUN npm config set _auth $AUTH
RUN npm config set email $EMAIL
RUN npm config set always-auth $ALWAYS_AUTH

RUN npm install

#FROM jekyll/builder:3.8.5
#
#CMD gem install bundler
#
#COPY --from=node /project/ /project/
#
#EXPOSE 4000
#
#WORKDIR /project

ENTRYPOINT /bin/bash

#docker run -it -p 4000:4000 -v /Users/geinosky/Projects/jekyll-koru:/project koru-jekyll /bin/bash

#docker run -it -p 4000:4000 koru-jekyll /bin/bash

#docker run -it koru-jekyll /bin/bash