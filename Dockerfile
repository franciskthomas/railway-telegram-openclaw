FROM node:20

WORKDIR /app

# Install OpenClaw globally
RUN npm install -g openclaw

# Expose Railway’s dynamic port
ENV PORT=8080
EXPOSE 8080

# Run OpenClaw CLI as a service
CMD ["sh", "-c", "openclaw up"]

