# Use official Node.js image as base
FROM node:current-alpine as build

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json  ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the React.js application
RUN npm run build

# Expose the port that React.js runs on
EXPOSE 3000

# Run the React.js application
CMD ["npm", "run", "start"]
