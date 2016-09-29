# Docker to run executable jars

This dockerfile is used to create a base images to run executable jars.

## Build base image `java-jar-runner`

To build this base image as name `java-jar-runner`, navigate your bash path `java-jar-runner` workspace and run the following command.

	docker build -t java-jar-runner .


##  Build custom docker images base on `java-jar-runner` image

Copy your application jar to the root and set the environment variable `JAR_FILE` as application jar name

- `JAR_FILE` :  name of the application jar 

### Example of a minimal Dockerfile

	FROM java-jar-runner
    COPY application.jar /
	ENV JAR_FILE application.jar


## Customization

Following environment variable can be passed

- `JAVA_OPTS` :  JVM argument
- `DEFAULT_PROGRAM_ARGS` :  default program argument.
- Additional Program Args can be passed through command line.


