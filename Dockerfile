FROM jekyll/jekyll:3.8.5
WORKDIR /project
CMD npm install  && rm -rf assets/koru-base && mv node_modules/koru-base assets/koru-base && jekyll serve