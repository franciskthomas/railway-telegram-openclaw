FROM node:20-alpine
RUN npm install -g openclaw
WORKDIR /app
EXPOSE 18789
CMD ["openclaw", "up"]

