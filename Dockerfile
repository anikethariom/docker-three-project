# base image for java docker image
FROM openjdk:17-jdk-alpine

#working directory(dir)
WORKDIR /app

# code copy from  into container 
COPY src/Main.jav /app/Main.java


#Compile Code  to execute the java file
RUN javac Main.java

#Run the code after compiling 
CMD ["java","Main"]

# This is docker file it called tamplete 

