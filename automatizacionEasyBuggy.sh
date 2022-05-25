cd easybuggy-master

export PATH=$PATH:/home/alumno/Descargas/sonar-scanner-4.7.0.2747-linux/bin

mvn compile

mvn package

sonar-scanner \
  -Dsonar.projectKey=EasyBuggy \
  -Dsonar.sources=src \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=72a033dc6761f8ff28b83c8b6022e340f978ea8b \
  -Dsonar.java.binaries=. -X
  
  mvn clean package

