# Docker to run executable jars

This dockerfile is used to create a base images to run executable jars.

##  Build  you own docker images

Copy your application jar to the root and set the enviorment variable `JAR_FILE` as application jar name

- `JAR_FILE` :  name of the application jar 

## example of Dockerfile 

COPY appliccation.jar /
ENV JAR_FILE appliccation.jar

## Customization

Following enviroment variable can be passed

- `JAVA_OPTS` :  JVM argument
- `DEFAULT_PROGRAM_ARGS` :  default program argument.
Additional Program Args can be passed through command line.


