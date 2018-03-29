# Run container as Jupyter server
This image includes basic ML dependencies, as listed in [requirements.txt](./requirements.txt).

## Start container
```sh
docker pull quiltdata/ctc_ml
docker run -it -p 8888:8888 quiltdata/ctc_ml
# will print out <TOKEN>
```

## Connect to Jupyter
In your local browser visit
localhost:8888 and paste <TOKEN>

## Build container
```sh
docker build -t qml .
```

