#!/bin/bash

# token - 3973acf4dd9cda51da979bcf78b75e4d97bc57e4

cd WordPress-master

export PATH=$PATH:/home/alumno/Descargas/sonar-scanner-4.7.0.2747-linux/bin

mvn compile

mvn package

sonar-scanner \
  -Dsonar.projectKey=WordPress \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=3973acf4dd9cda51da979bcf78b75e4d97bc57e4 \
  -Dsonar.java.binaries=target/classes -X
  
  mvn clean package
