#!/bin/bash

/home/alumno/Descargas/sonarqube-9.4.0.54424/bin/linux-x86-64/sonar.sh console &

sleep 40

cd webview-master

export PATH=$PATH:/home/alumno/Descargas/sonar-scanner-4.7.0.2747-linux/bin

./gradlew assembleDebug

sonar-scanner \
  -Dsonar.projectKey=Webview \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=06fb8d3d4340812657286f9fa3ab62c6bd4b17a8 \
  -Dsonar.java.binaries=gradle -X
