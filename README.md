# AWS Lambda Node with Docker
Basic example template for AWS lambda in Node using JavaScript.


## Development
You could use `docker-compose` for development as it mounts your development 
project in Docker container.

In order to initiate lambda container for application please run:

    ~$: make up

After each change to source code you need to down container and up them again:

    ~$: make down


## Deployment

    ~$: docker build -t syniol.dev/node:14 .
    ~$: docker run --name syniol-lambda-node --rm -p 80:8080 syniol.dev/node:14


### Docker Image Environment Variables

 * LAMBDA_TASK_ROOT: `/var/task`
 * LAMBDA_RUNTIME_DIR: `/var/runtime`


### Test Endpoint
Please ensure you have `curl` installed in your host machine; and the run:

    curl -XPOST "http://localhost:4000/2015-03-31/functions/function/invocations" -d '{}'

#### Credits
2021 &copy; Syniol Limited. All rights reserved.
