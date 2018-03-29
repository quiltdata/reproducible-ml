# Running container as a Jupyter server

## Start container
TODO: puth this image on Dockerhub
```sh
docker build -t qml .
docker run -it -p 8888:8888 qml
# will print out <TOKEN>
```

## Connect to Jupyter
In your local browser visit
localhost:8888 and paste <TOKEN>
