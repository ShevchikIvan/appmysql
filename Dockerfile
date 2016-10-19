FROM node
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD ./package.json /usr/src/app/package.json
RUN npm install


ADD . /usr/src/app

ADD app.js /usr/src/app/app.js
RUN chmod +x /usr/src/app/app.js
CMD "/usr/src/app/app.js"
CMD node app.js