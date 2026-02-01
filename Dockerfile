FROM node:20

WORKDIR /app

# Install OpenClaw globally
RUN npm install -g openclaw

# IMPORTANT: ensure npm global bin is on PATH for Railway runtime
ENV PATH="/usr/local/bin:${PATH}"

# Railway injects PORT
ENV PORT=8080
EXPOSE 8080

# Start OpenClaw (shell form so PATH is respected)
CMD openclaw up

