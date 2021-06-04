FROM node:15
ENV NODE_ENV=local
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
#RUN npm install --production --silent && mv node_modules ../
RUN npm install --silent
COPY . .
ENV PORT=3000
EXPOSE ${PORT}
#CMD ["npm", "run", "start"]
CMD ["npm", "run", "dev"]
