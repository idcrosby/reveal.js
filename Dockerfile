FROM node:5.10.0

# Prepare app directory
RUN mkdir -p /usr/src/app

# Install dependencies
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

# Expose the app port
EXPOSE 8000

# Start the app
CMD npm start