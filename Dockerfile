FROM nodejs:6
RUN mkdir -p /user/src/app
WORKDIR /user/src/app
COPY package.json /user/src/app
RUN npm cache clean
RUN npm install
COPY . /user/src/app
EXPOSE 4200
CMD ["npm","start"]
