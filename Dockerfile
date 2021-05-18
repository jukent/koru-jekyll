FROM jekyll/jekyll:3.9.0
WORKDIR /project
CMD npm config set //npm.pkg.github.com/:_authToken=${AUTH_TOKEN} && npm install && rm -rf assets/koru-base && mv node_modules/@ncar/koru-base assets/koru-base && jekyll serve