# Use official Node.js image as base
FROM node:current-alpine

WORKDIR /app

# Install necessary build tools
RUN apk add --no-cache python3 make gcc g++

# Copy only package files first
COPY package*.json ./

# Clear npm cache and use ci for consistent installs
RUN npm cache clean --force \
    && npm install --verbose \
    && npm install --save-dev node-gyp

# Copy the rest of the application code
COPY . .

# Build the React.js application
RUN npm run build

# Expose the port that React.js runs on
EXPOSE 3000

# Run the React.js application
CMD ["npm", "run", "start"]
