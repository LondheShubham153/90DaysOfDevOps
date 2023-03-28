# Example of docker-compose scale
To create three replicas of the `web` service, you can run the following command:
`docker-compose up -d --scale web=3` it will scale web to 3 containers.

# To seet the logs of container
`docker-compose logs -f`
`docker-compose logs --tail 10 SERVICE_NAME`

# Mounting a volume to container
`docker run --mount source=my-data,target=/app/data busybox echo "Data stored in /app/data"`

# Mounting a host volume to container
`docker run --mount type=bind,source=$(pwd)/data,target=/app/data busybox echo "Data stored in /app/data"`