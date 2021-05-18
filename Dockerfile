FROM jekyll/jekyll:3.8.6
WORKDIR /project
CMD npm config set //npm.pkg.github.com/:_authToken=${AUTH_TOKEN} --userconfig .npmrc && npm install
CMD rm -rf assets/koru-base && mv node_modules/@ncar/koru-base assets/koru-base
CMD jekyll serve
