#! /bin/bash
sudo docker build . -t 410/yocto
sudo docker run -it --volume `pwd`:/home/user/workspace 410/yocto bash
