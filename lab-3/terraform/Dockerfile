FROM alpine:latest

RUN apk add --no-cache wget unzip

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/latest/terraform_latest_linux_amd64.zip
RUN unzip terraform_latest_linux_amd64.zip
RUN mv terraform /usr/local/bin/

RUN apk add --no-cache docker-cli

WORKDIR /workspace

CMD ["/bin/sh"]
