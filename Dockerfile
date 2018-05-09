FROM node
RUN mkdir -p /user/src/app
WORKDIR /user/src/app
COPY package.json /user/src/app
RUN npm install
COPY . /user/src/app
EXPOSE 4200
CMD ["npm","start","--","--host","0.0.0.0"]
