# nginx-streamlog
Docker container that keeps nginx running in the foreground, logs stdout and stderr log to console.

Image pushed to dockerhub here: [nginx-streamlog image on dockerhub](https://hub.docker.com/layers/devmegan/nginx/streamlog/images/sha256-53987f71bad88f35f3d59398bbeb00a81a9182f7435c66637c43837ed31d0212).

## Use Image 
`docker container run -p 80:80 devmegan/nginx:streamlog`

## Use Dockerfile

### Build
`docker image build -t nginx:streamlog .`

### Run

`docker container run -p 80:80 nginx:streamlog`

## Access app
view app in browser at `localhost`