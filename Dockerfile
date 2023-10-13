# Use the official Mesibo Docker image as the base image
FROM mesibo/mesibo:latest

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port on which your Mesibo chat application will run
EXPOSE 3000

# Start the Mesibo chat application
CMD [ "npm", "start" ]
