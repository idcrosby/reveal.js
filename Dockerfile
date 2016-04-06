FROM mhart/alpine-node:5.10.1

# Prepare app directory
#RUN mkdir -p /usr/src/app
#ADD . /usr/src/app

# Install dependencies
#WORKDIR /usr/src/app
WORKDIR /src
ADD . .
RUN npm install
RUN npm install -g grunt-cli

# Build the app
#RUN npm build

# Expose the app port
EXPOSE 8000

# Start the app
CMD npm start