FROM public.ecr.aws/lambda/nodejs:14

#ENV LAMBDA_TASK_ROOT=/var/task
#ENV LAMBDA_RUNTIME_DIR=/var/runtime

# Copy function code
COPY app.js ${LAMBDA_TASK_ROOT}
COPY package.json ${LAMBDA_TASK_ROOT}
COPY yarn.lock ${LAMBDA_TASK_ROOT}

WORKDIR ${LAMBDA_TASK_ROOT}

RUN yarn && yarn test
# Set the CMD to your handler CMD [ "app.handler" ]

CMD [ "app.handler" ]