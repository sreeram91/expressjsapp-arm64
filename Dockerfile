# Use the official Node.js image as the base image
FROM node:12-slim AS base

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json for dependency installation
COPY --link package.json package-lock.json ./

RUN npm install

# Copy the application source code
COPY --link . .

# Expose the application port
EXPOSE 4002

# Define the command to run the application
CMD ["npm", "start"]