FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

# The first period is saying that we are copying all of the source code in the data-volumes-01-starting-setup folder
# The second period is saying where we are copying the info to, this goes to the WORKDIR which is /app inside of the container
COPY . . 

EXPOSE 80

CMD ["node", "server.js"]

