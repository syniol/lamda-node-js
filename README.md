# AWS Lambda Node with Docker
Basic example template for AWS lambda in Node using JavaScript.


## Development
You could use `docker-compose` for development as it mounts your development 
project in Docker container.


## Deployment

    ~$: docker build -t syniol.dev/node:14 .
    ~$: docker run --name syniol-lambda-node --rm -p 80:8080 syniol.dev/node:14

### Docker Image

 * LAMBDA_TASK_ROOT: /var/task
 * LAMBDA_RUNTIME_DIR: /var/runtime


#### Credits
2021 &copy; Syniol Limited. All rights reserved.
