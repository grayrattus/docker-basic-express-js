FROM alpine:latest
ADD . /node_app
WORKDIR /node_app
RUN apk add nodejs \
	 npm \
	 bash 
	 #build-base \
	 #libtool \
	 #autoconf \
	 # automake 
RUN npm install -g nodemon
RUN npm install .
COPY . .

EXPOSE 3000
CMD nodemon .
