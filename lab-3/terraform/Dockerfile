FROM alpine:latest

# Install dependencies
RUN apk add --no-cache wget unzip

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/1.5.5/terraform_1.5.5_linux_amd64.zip
RUN unzip terraform_1.5.5_linux_amd64.zip
RUN mv terraform /usr/local/bin/

RUN apk add --no-cache docker-cli

WORKDIR /workspace

CMD ["/bin/sh"]
