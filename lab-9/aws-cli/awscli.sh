#!/bin/bash

docker run --rm -it \
-v $HOME/.aws:/root/.aws:ro \
--name awscli \
awscli-container \
"$@"
