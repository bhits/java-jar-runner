# Short Description
Java-jar-runner is base image to build custom images to run executable jars.

# Full Description

# Supported Tags and Respective `Dockerfile` Links

[`8u102-jre`](https://github.com/bhits/java-jar-runner/blob/master/Dockerfile)[(8u102-jre/Dockerfile)](https://github.com/bhits/java-jar-runner/blob/master/Dockerfile)

For more information about this image,and its history, please see the [GitHub repository](https://github.com/bhits/java-jar-runner).

# What is java-jar-runner?

Java-jar-runner is base image to build custom images to run executable jars.

# How to use this image

## Start a java-jar-runner instance

`docker run  --name java-jar-runner -v /path/on/dockerhost/executable.jar:/executable.jar -e "JAR_FILE=executable.jar" -d bhits/java-jar-runner:8u102-jre`

## Environment Variables

When you start the java-jar-runner image, you can edit the configuration of the java-jar-runner instance by passing one or more environment variables on the command line. 

### JAR_FILE

This environment variable is used to setup which jar file will run. you need mount the jar file to the root of container.

`docker run --name phr -e JAR_FILE="executable.jar" -v "/path/on/dockerhost/executable.jar:/executable.jar" -d bhits/java-jar-runner:8u102-jre`

### JAVA_OPTS 

This environment variable is used to setup JVM argument, such as memory configuration.

`docker run --name java-jar-runner -v /path/on/dockerhost/executable.jar:/executable.jar -e "JAR_FILE=executable.jar" -e "JAVA_OPTS=-Xms512m -Xmx700m -Xss1m" -d bhits/java-jar-runner:8u102-jre`

### DEFAULT_PROGRAM_ARGS 

This environment variable is used to setup application arugument. The default value of is "--spring.profiles.active=docker".

`docker run --name java-jar-runner -e DEFAULT_PROGRAM_ARGS="--spring.profiles.active=ssl,docker" -d bhits/java-jar-runner:8u102-jre`

# Supported Docker versions

This image is officially supported on Docker version 1.12.1.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see the [Docker installation documentation](https://docs.docker.com/engine/installation/) for details on how to upgrade your Docker daemon.

# License

View [license]() information for the software contained in this image.

# User Feedback

## Documentation 

Documentation for this image is stored in the [bhits/java-jar-runner](https://github.com/bhits/java-jar-runner) GitHub repository. Be sure to familiarize yourself with the repository's README.md file before attempting a pull request.

## Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/bhits/java-jar-runner/issues).