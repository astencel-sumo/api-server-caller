# API Server Caller

Build the Docker image:

```sh
docker build -t api-server-caller .
```

Run the Docker image to see if it works:

```sh
docker run --rm -it api-server-caller
```

Log in to Azure, Azure Container Registry:

```sh
az login
az acr login --name agtestingregistry
```

Push the image to ACR:

```sh
./push-image-to-acr.sh api-server-caller
```

Use the image in deployment:

```sh
kubectl apply -f Deployment.yaml
```
