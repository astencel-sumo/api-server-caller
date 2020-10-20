# API Server Caller

Build the Docker image:

```sh
docker build -t api-server-caller .
```

Run the Docker image to see if it works:

```sh
docker run --rm -it api-server-caller
```

Push the image to ACR:

```sh
./push-image-to-acr.sh
```

Use the image in deployment:

```sh
kubectl apply -f Deployment.yaml
```
