FROM alpine:latest
LABEL maintainer "Alex"

RUN apk --no-cache add \
      ca-certificates \
      groff \
      less \
      python3 \
      py3-pip && \
    pip3 install awscli && \
    mkdir -p /root/.aws && \
    { \
        echo '[default]'; \
        echo 'output = json'; \
        echo 'region = ${AWS_DEFAULT_REGION}'; \
        echo 'aws_access_key_id = ${AMAZON_ACCESS_KEY_ID}'; \
        echo 'aws_secret_access_key = ${AMAZON_SECRET_ACCESS_KEY}'; \
    } > /root/.aws/config



ENTRYPOINT [ "aws" ]