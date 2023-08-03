#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}Running 'docker build' command:${NC}"
docker build --platform=linux/amd64 -t tech-tales .

echo -e "${GREEN}Running 'docker run' command:${NC}"
docker run --platform=linux/amd64 -p 8000:8000 tech-tales