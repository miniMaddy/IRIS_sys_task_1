#Base Image
FROM ruby:2.5.1

#Installing required packages
RUN apt-get update -qq \
  && apt-get install -y \
    build-essential \
    ruby-dev \
    zlib1g-dev \
    liblzma-dev \
    libxslt-dev \
    libxml2-dev \
    locales \
    default-libmysqlclient-dev \
    nodejs \
    mysql-server

#Changing the workdirectory of the container
WORKDIR /app

#Copying all the files in the container
COPY . /app/

#Environment variable to specify the location from where the gems will be installed
ENV BUNDLE_PATH /gems
#Running bundle install
RUN bundle install 

#Compiling the entrypoint.sh file which runs the database after the container is created
RUN chmod +x entrypoint.sh

#Running in bash of container
ENTRYPOINT ["./entrypoint.sh"]

#To tell the users that the application is exposed at port 3000
EXPOSE 3000

