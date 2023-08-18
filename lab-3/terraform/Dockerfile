FROM alpine:latest

RUN apk add --no-cache wget unzip

RUN wget https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_linux_amd64.zip
RUN unzip terraform_1.0.9_linux_amd64.zip
RUN mv terraform /usr/local/bin/

RUN apk add --no-cache docker-cli

WORKDIR /workspace

CMD ["/bin/sh"]
