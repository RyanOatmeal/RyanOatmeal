# From the terminal emulator, this is the container that everything "resides in".
# From here, we use GUIX to provide package management and a sanitized environment 
# to use only those packages.

# Why not just use GUIX containers and skip podman all together? 
# 1. I want all of my requirements to be capable of being easily installed and ran on 
#    many different setups. At the time of writing this, GUIX 
#    doesn't have a simple installation process on windows whereas podman does. 
# 2. I prefer the containerization software in the requirements to mirror/document 
#    my own installation of them as much as possible. Currently, that is 
#    essentially just using a linux distro (debian being the easiest) to install 
#    guix so that I can install git with it, clone down my repo, and then 
#    start using my scripts.

FROM docker.io/library/debian:sid as builder

RUN mkdir base
COPY secrets.env base/secrets.env

# https://guix.gnu.org/manual/en/html_node/Binary-Installation.html
# RUN apt update && apt install -y guix git
RUN cd /tmp
RUN wget -O guix-install.sh https://guix.gnu.org/install.sh
RUN chmod +x guix-install.sh
RUN ./guix-install.sh

# https://guix.gnu.org/manual/en/html_node/Build-Environment-Setup.html
RUN groupadd --system guixbuild
RUN for i in $(seq -w 1 10);             \
    do                                   \
      useradd -g guixbuild -G guixbuild  \
      -d /var/empty -s $(which nologin)  \
      -c "Guix build user $i" --system  \
      guixbuilduser$i;                   \
    done

# See scripts/environment/install/sh for how this arg is used.
ARG BRANCH_NAME=main
RUN git clone --branch $BRANCH_NAME https://github.com/RyanOatmeal/RyanOatmeal.git base/RyanOatmeal

CMD ["guix-daemon", "--build-users-group=guixbuild"]