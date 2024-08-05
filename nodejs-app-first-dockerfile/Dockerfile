FROM node

WORKDIR /app

COPY . /app

RUN npm install

# This EXPOSE doesn't really made that port do anything. You might think that we exposed port 80, which would mean that we can see this website on localhost:80 but that is wrong. 
#  We need to add a publish flag (-p) and add the local port from which we will access this application. This can be whatever we want. For this example we use 3000.
# Then we need to add the port on the docker container on which the application was exposed on. This is found below and we'll us 80.
# so the command you'll run in the terminal is:
# docker run -p 3000:80 [whatever your image name is]
# docker run -p 3000:80 87a72212cd1bb47ed0c7333a23bc495d876c84f7893b6c1f78abe690df9bea03
EXPOSE 80 

CMD ["node", "server.js"]