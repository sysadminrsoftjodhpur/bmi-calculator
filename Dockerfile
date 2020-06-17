FROM node:9.4

# Create app directory
WORKDIR /usr/src/app

# Expose port for service
EXPOSE 4200

# Install and configure `serve`.
RUN npm install -g serve
RUN ng serve --host 0.0.0.0

# Copy source code to image
COPY . .

# Install dependencies
RUN npm install

# Build app and start server from script
CMD ["/usr/src/app/run"]
