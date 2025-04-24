FROM node:16-alpine

# Install git
RUN apk add --no-cache git

# Clone the repository
RUN git clone -q https://github.com/omarda03/todo-app.git
# Set the working directory to the app directory
WORKDIR /todo-app

RUN apk add --no-cache python3 make g++ && \
    ln -sf python3 /usr/bin/python
