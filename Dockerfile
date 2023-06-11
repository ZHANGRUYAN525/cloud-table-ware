FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y nodejs \
    npm && \
    npm install -g n && \
    n lts && \
    npm i -g npm
    COPY app.js /app/app.js
    EXPOSE 80
    CMD ["node", "/app/app.js"]
