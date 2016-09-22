# NOTE: this is not the default way to build CandV and
# might possibly be out of date with the latest branch.
# The preferred way to build the container images is to
# utilize s2i via Open Shift.
#
FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD [ "npm", "start" ]
