FROM ubuntu:20.04

RUN adduser --disabled-password --gecos '' alpha
WORKDIR /home/alpha

RUN apt -y install nodejs
RUN apt -y install npm
COPY alpha container
RUN npm install
RUN npm build

USER alpha
CMD ["npm", "start"]
