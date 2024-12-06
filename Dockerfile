# Use Node.js 19 on Alpine Linux
FROM node:19-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy only package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Define the default command to run your app
CMD ["npm", "start"]
