FROM node:24-alpine
RUN mkdir -p /home/app
WORKDIR /home/app
COPY /package.json /package-lock.json .
RUN npm install
COPY / .
EXPOSE 3000
CMD ["npm","start"]
