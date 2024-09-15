# Use an official Node.js image as the base
FROM node:16

# Create a working directory inside the container
WORKDIR /zorn_dawson_site

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 7775
EXPOSE 7775

# Start the React app
CMD ["npm", "start"]