# Hi there 👋

I'm building a knowledge base.

# Requirements

- A Terminal Emulator capable of running 
  [dash](https://packages.debian.org/sid/dash) scripts.
  
  + Every other requirement must be accessible by the shell in this terminal 
    emulator.
  
  + It needs to support unicode characters.

  + For example:  Foot, Alacritty, Kitty, or WezTerm with a nerdfont is 
    sufficient. I personally use [foot](https://codeberg.org/dnkl/foot) and 
    [BigBlueTerm Nerd Font](https://www.nerdfonts.com/font-downloads).
  
- [podman](https://podman.io/)
  
- A `secrets.env` file of the following form:
  
  + ```
    TOKEN=<Your fine grained personal access token which allows you to push up to github>
    PASS_PHRASE=<The pass phrase you use to decrypt the project planning document>
    ```
- [git](https://git-scm.com/)
  
  + You should be able to clone repositories from github.

# Installation

- Configure the required software to your liking. An example can be found in 
  `scripts/foot/deploy_config.sh` (UPDATE FOR NEW SETUP).  
- `git clone https://github.com/RyanOatmeal/RyanOatmeal.git` in the same 
  directory that `secrets.env` lives.
- `cd RyanOatmeal` 
- `dash scripts/environment/install.sh`

## Uninstall 

`dash scripts/environment/uninstall.sh` will remove the images and containers 
made from the installation.


# Use 

- `dash scripts/environment/start.sh` to start the podman container.
- `dash scripts/environment/stop.sh` to stop the podman container.
- `dash scripts/environment/enter.sh` to enter the environment. Note 
  that the podman container must be up (i.e. you should have ran the start
  script at some point) for this command to work.

# Software I'm Using (MIGRATING TO PODMAN AND GUIX MANIFEST FILES)

See `notes/software_i_am_using.md`.

# A note on Large Language Models

The only way that I use Large Language Models is by conversing with one when 
my progress slows down and maybe copy pasting in a code snippet in the case that 
I've read it, like what I see, and have fully understood that snippet. This is 
no different than how any responsible programmer used forums like google and 
stackexchange in the past and since people seem to not use forums with the same 
fervor in our post LLM world, it's an indispensable tool for me in that regard. 

I've personally found any utility outside of that specific use case to be a 
hindrance though and so I can assure you that nothing like an agentic AI has 
been involved in the process of making this repository. Just a single human 
typing away in a terminal who asks for advice occasionally as they've plodded 
along. 
