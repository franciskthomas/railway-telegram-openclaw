FROM node:20

WORKDIR /app

# Install OpenClaw globally
RUN npm install -g openclaw \
 && ln -s $(npm bin -g)/openclaw /usr/bin/openclaw

ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["/usr/bin/openclaw"]
CMD ["up"]

