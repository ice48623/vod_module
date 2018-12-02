#!/bin/bash
sudo docker pull nytimes/nginx-vod-module 
sudo docker run -p 3030:80 -d -v ~/videos:/opt/static/videos -v $PWD/nginx.conf:/usr/local/nginx/conf/nginx.conf nytimes/nginx-vod-module
