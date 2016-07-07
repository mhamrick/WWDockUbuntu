# WWDockUbuntu

This project aims to provide a container for testing the WebWork online homework system.  

Please see http://webwork.maa.org/ for more details on the project.   

## Issues

Currently the dockerfile successfully builds with the prerequisites, but is unable to complete the install.  

docker build -t wwubu .
docker run -i -t wwubu /bin/bash

Once in the container, I run the following command to complete the install:

perl bin/ww_install.pl

Note that you have to use the webserver user and group, otherwise the install fails.
