# Hi there!

This is my computer "base" where I keep a specification of my tech stack in 
the form of a set of nixos files and sh helper scripts. I run everything here on
a ThinkPad T16. 

# Requirements

- A `../secrets.env` file of the following form:
  
  + ```
    TOKEN=<Your fine grained personal access token which allows you to push up to github>
    PASS_PHRASE=<The pass phrase you use to decrypt the project planning document>
    ```
- My [nixos](https://nixos.org/) configuration found in `./programs/nixos` running
  as the user's operating system.

# Installation

- `git clone https://github.com/RyanOatmeal/RyanOatmeal.git` 
- `cd RyanOatmeal` 
- `dash programs/sh/git/deploy_hooks.sh` for important pre-commit hooks.

## Uninstall 

Just delete the repository and `../secrets.env`.

# Use

- **From the root directory of the repository:** `dash programs/sh/<folder for collection of commands>/<command>.sh` 
- tmux snippets found in `programs/nixos/home-manager/ryano/tmux/definition.nix`

# Provenance

The only way that I use Large Language Models is by conversing with one when 
my progress slows down followed by copying and pasting in a generated snippet 
in the case that I've read it and fully understood it. This is no different 
than how any responsible programmer used forums like stackexchange in the past.

I've personally found any utility outside of that specific use case to be a 
hindrance and so I can assure you that nothing like an agentic AI has 
been involved in the process of making this repository. Just a single human 
typing away in a terminal who asks for advice occasionally as they've plodded 
along. 

