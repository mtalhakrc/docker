FROM node:latest

WORKDIR /usr/src/app

COPY ./deneme .


RUN yarn install

RUN yarn build

CMD [ "cd", "/dist" ]
EXPOSE 8080
ENV HOST 0.0.0.0
CMD [ "yarn", "preview" ,"--port","8080"]


#docker build -t nodeapp -f . ../../deneme  -f [dockerfile] [items copied added path]