FROM node:7
MAINTAINER Anders Hansson <anders@programlabbet.se>
RUN npm install -g yarn
RUN yarn global add elm@0.17.1
RUN mkdir -p /app /app-sync
VOLUME /app
VOLUME /app-sync
WORKDIR /app-sync
COPY *.sh /
RUN chmod 755 /*.sh
CMD ["/bin/bash", "-c", "/start.sh"]
