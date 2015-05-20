# Docker-Piwik

Piwik installation using an externally linked database

    $> docker run -d --link some-database:db -P etiennecharignon/piwik

The docker-compose.yml is there to help validate the image in local. It is also a good demontration of a possible use of this image. (but don't give the password in your production file)
