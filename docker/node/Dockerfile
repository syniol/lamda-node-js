FROM public.ecr.aws/lambda/nodejs:14

ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

VOLUME /var/task

CMD [ "app.handler" ]
