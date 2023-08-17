#!/bin/bash

docker run --rm -it \
-v $HOME/.aws:/root/.aws:ro \
--name awscli \
awscli-container \
"$@"


# sudo chmod +x awscli.sh
# ./awscli.sh iam list-users
