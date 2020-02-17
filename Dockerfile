FROM starefossen/ruby-node:2-6-alpine

RUN apk --update add --virtual build_deps build-base ruby-dev libc-dev linux-headers
RUN apk add git

RUN mkdir -p /usr/src/app
VOLUME /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler

EXPOSE 4000 80
CMD jekyll serve -d /_site --watch --force_polling -H 0.0.0.0 -P 4000