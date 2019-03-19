FROM jekyll/jekyll:3.8.5

ARG AUTH
ARG EMAIL

ENV AUTH ${AUTH}
ENV EMAIL ${EMAIL}

RUN npm config set _auth $AUTH &&  \
    npm config set email $EMAIL

WORKDIR /project

CMD npm install  && rm -rf assets/koru-base && mv node_modules/koru-base assets/koru-base && jekyll serve