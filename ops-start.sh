#!/bin/bash
set +a
export CI=''
set -a
echo "Configured env..."
docker build --no-cache -t automad/automad .
docker run -d -p 8000:80 --name automad-latest automad/automad:latest
