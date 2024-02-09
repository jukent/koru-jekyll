FROM jekyll/jekyll:4.2.2

ARG NPM_TOKEN
ENV NPM_TOKEN=$NPM_TOKEN

COPY . .
RUN npm config set '//npm.pkg.github.com/:_authToken' ${NPM_TOKEN}
RUN npm install
RUN rm -rf assets/koru-base && mv node_modules/@ncar/koru-base assets/koru-base
CMD jekyll serve --trace
