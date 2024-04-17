# Use official Node.js image as the base
FROM node:14-alpine as build

# Set working directory
WORKDIR /app

# Copy package.json and yarn.lock to work directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the Next.js app for production
RUN yarn build
