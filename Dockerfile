# Use official Node 18 runtime as a parent image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json first (helps layer caching)
COPY package.json ./

# Install any dependencies (none for now, but keeps pattern)
RUN npm install --production

# Copy app source
COPY . .

# Default command to run tests (keeps container useful for CI)
CMD ["node", "test.js"]
