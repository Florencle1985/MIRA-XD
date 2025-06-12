FROM node:lts-buster
RUN git clone https://github.com/florencle1985/Mira-xd/root/Florencle1985
WORKDIR /root/Florencle1985
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
