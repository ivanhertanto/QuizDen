# Use the official Node.js LTS (Alpine) image as a base
FROM node:lts-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies using npm ci for reproducibility
RUN npm ci --production

# Copy over the source code
COPY . .

# Expose the necessary port (change if needed)
EXPOSE 5000

# Finally, serve your app
CMD ["npm", "run", "start"] 
