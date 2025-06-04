
# Use a lightweight Java image
FROM anapsix/alpine-java

# Add metadata about the image maintainer
LABEL maintainer="jeffngaram@gmail.com"

# Copy the built Spring PetClinic JAR file into the container
COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar

# Define the startup command for the container
CMD ["java", "User", "/Documents/spring-petclinic-1.5.1.jar"]