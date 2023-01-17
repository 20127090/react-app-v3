FROM node
RUN mkdir /app
WORKDIR /app
COPY . .
CMD ["npx", "serve", "build"]