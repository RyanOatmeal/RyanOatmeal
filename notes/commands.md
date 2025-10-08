# Commands

I have a CLI starting to form from a moderate number of shell scripts that I've 
been placing in the scripts directory. So in order to start managing that 
complexity, I've made this document in order to provide navigational assistance 
for both me, future me, and anyone else who wants to use this repository.

Additionally, instead of using vim's capabilities, I prefer to use tmux, vi, 
grep, sed, and awk. So I'll also be storing material here on constructing one 
liners to aid my text editing.

# podman

## Create Image with `<name>` from Containerfile

`podman build --tag <name> .`

Note that this might make more than one image if you're using a base image
like debian.

## Run command on `<image name>` and get output

`podman run -it <name> <command that can be run on image>`

## List

- List images
  + `podman images`
- List containers
  + `podman container list`

## Delete images and containers

- To delete all images and containers:
  + `podman rmi --all`
  + `podman rm --all`
- To delete a particular image or container:
  + `podman rm <container>`
  + `podman rm <image>`



# scripts

Here we talk about scripts and the folders they sit in.

## config

Here is where I keep configuration files as well as a script to deploy these 
configurations to the correct folders. 

### deploy

`dash scripts/config/deploy.sh`

## install

The comands to set up git pre-commit hooks found in 
`scripts/git/pre-commit`. It also runs the config deploy script.
The goal for this script is to set up everything for the project after I've 
installed the software in `notes/software_i_am_using.md`.

`dash scripts/install.sh`

## encryption

Two scripts here which encrypt and decrypt my project planning file. Nothing 
truly top secret to be found, I would just be embarrased to have random 
passerby's read my caffeine fueled rants. 

### encrypt

`dash scripts/encryption/encrypt.sh`

### decrypt

`dash scripts/encryption/decrypt.sh`

## git

This folder contains the `pre-commit` file which is the source code for this 
repository's pre-commit hooks. Additionally, there is a script for pushing 
the latest in the main branch up to github. 

### push

`dash scripts/git/push.sh`

## tmux 

This contains a run script for spawning a customized tmux session. 

### run

`dash scripts/tmux/run.sh`
