####### Dockerfile #######
FROM rocker/verse:3.5.1
MAINTAINER Nikolaos Tourvas <nikostourvas@gmail.com>

# Create directory for population genetics software on linux
RUN mkdir /home/rstudio/software

# Prevent error messages from debconf about non-interactive frontend
ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

## Install population genetics packages from CRAN
RUN rm -rf /tmp/*.rds \
&&  install2.r --error \
    adegenet \
    popprxl \
    mmod \
    RColorBrewer \ 
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds

RUN installGithub.r \
  nikostourvas/hierfstat \
  && rm -rf /tmp/downloaded_packages/ /tmp/*.rds
 
