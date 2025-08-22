FROM node:20-alpine

# Set working directory in container
WORKDIR /app

# Copy package files and install dependencies

COPY src/package.json src/package-lock.json ./
RUN npm install

# Copy application code
COPY src/. .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]

