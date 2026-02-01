FROM node:20

WORKDIR /app

# Install OpenClaw locally (not global)
RUN npm init -y && npm install openclaw

ENV PORT=8080
EXPOSE 8080

# Run OpenClaw from local node_modules (guaranteed path)
CMD ["./node_modules/.bin/openclaw", "up"]

