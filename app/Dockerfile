
#base image this docker file builds on
FROM node:16

#specify work directory in the container
WORKDIR /usr/src/app

#copy packages files and install dependencies in work directory 
COPY package*.json ./
RUN npm install
RUN npm install express 

#copy remaining app files in work directory
COPY . .

#command that will run when the container starts
CMD ["npm", "start"]



