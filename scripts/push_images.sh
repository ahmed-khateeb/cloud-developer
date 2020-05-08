# udactiy-restapi-feed image
docker tag $DOCKER_USERNAME/udacity-rest-feed $DOCKER_USERNAME/udacity-rest-feed:latest
docker push $DOCKER_USERNAME/udacity-restapi-feed:latest

# udactiy-restapi-user image
docker tag $DOCKER_USERNAME/udacity-rest-user $DOCKER_USERNAME/udacity-rest-user:latest
docker push $DOCKER_USERNAME/udacity-rest-user:latest

# udacity-frontend image
docker tag $DOCKER_USERNAME/udacity-frontend $DOCKER_USERNAME/udacity-frontend:latest
docker push $DOCKER_USERNAME/udacity-frontend:latest

# reverseproxy image
docker tag $DOCKER_USERNAME/reverseproxy $DOCKER_USERNAME/reverseproxy:latest
docker push $DOCKER_USERNAME/reverseproxy:latest