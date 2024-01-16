# Use the official Node.js image as the base image
FROM node:20-alpine

# Create a working directory inside the container
WORKDIR /app

# Copy the package.json file to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's files to the container
COPY . .

# Expose the port the app will run on (usually 3000 for Node.js apps)
EXPOSE 4000

# Define the command to start the app
CMD ["node", "server.js"]
