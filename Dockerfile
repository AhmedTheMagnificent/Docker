# Use Node.js version 12 as the base image
FROM node:12

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your application will run on
EXPOSE 8080

# Set the default command to start your server
CMD ["node", "index.js"]
