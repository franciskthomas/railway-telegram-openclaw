FROM node:20-alpine

# Install OpenClaw globally
RUN npm install -g openclaw

WORKDIR /app

# Railway provides PORT dynamically
EXPOSE 8080

# IMPORTANT: explicitly call the openclaw binary
CMD ["sh", "-c", "/usr/local/bin/openclaw up"]


