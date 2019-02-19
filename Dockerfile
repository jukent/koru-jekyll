FROM jekyll/builder:3.8.5

CMD gem install bundler

EXPOSE 4000

#docker run -it -p 4000:4000 -v /Users/geinosky/Projects/jekyll-koru:/project koru-jekyll /bin/bash
#WORKDIR /project
#RUN jekyll build
#RUN jekyll serve -w