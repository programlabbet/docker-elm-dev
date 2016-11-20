FROM node:7
MAINTAINER Anders Hansson <anders@programlabbet.se>
RUN npm install -g yarn
VOLUME /app
WORKDIR /app
CMD ["yarn", "install"]
CMD ["yarn", "start"]
