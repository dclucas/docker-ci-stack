A base docker image for a docker-compose enabled Jenkins 2 and a companion docker-compose.yml for some extra CI goodies (Nexus, Sonarqube, etc).

If running this image directly (instead of using the provided docker-compose file), remember to map a volume into your host's `docker.sock`, like so:
`docker run -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock dclucas/jenkins2-and-compose`
