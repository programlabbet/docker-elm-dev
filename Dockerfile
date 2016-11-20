FROM node:7
MAINTAINER Anders Hansson <anders@programlabbet.se>
RUN npm install -g yarn
RUN yarn global add elm@0.17.1
VOLUME /app
WORKDIR /app
CMD ["/bin/bash", "-c", "/start.sh"]
