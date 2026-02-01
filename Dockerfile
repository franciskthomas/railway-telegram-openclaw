FROM node:20-alpine

WORKDIR /app

# Install OpenClaw globally
RUN npm install -g openclaw

# Railway provides PORT dynamically
EXPOSE 8080

# Start OpenClaw using CLI (doc-supported)
CMD ["sh", "-c", "npx openclaw up"]

