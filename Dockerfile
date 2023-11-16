FROM node:lts-alpine
WORKDIR /app
ARG VERZE
ENV VERZE=$VERZE
COPY . . 
RUN npm install --production
ENTRYPOINT npm start
EXPOSE 80
