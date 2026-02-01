FROM node:20

WORKDIR /app

# Install OpenClaw globally
RUN npm install -g openclaw

# Railway injects PORT at runtime
ENV PORT=8080

EXPOSE 8080

# Run OpenClaw as the container entrypoint (not via node, not via npx)
ENTRYPOINT ["openclaw"]
CMD ["up"]

