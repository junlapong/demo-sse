run:
	@mvn jetty:run

new-web:
	@mvn archetype:generate -DgroupId=com.demo.sse \
      -DartifactId=simple-webapp \
      -Dpackage=com.demo.sse \
      -DarchetypeArtifactId=maven-archetype-webapp \
      -Dversion=1.0-SNAPSHOT \
      -DinteractiveMode=false
