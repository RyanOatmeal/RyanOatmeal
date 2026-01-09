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

# Licensing

This repository is under the AGPL-3.0 license found in `LICENSE`.

# Provenance

The author of this repository uses AI the same way that they've used search 
engines and forums in the past. That way is by using it as a tool which sits
strictly in their web browser, is queried, and the author then reads the 
output, looking for insight into what they're doing. 

There is nothing like agentic AI or IDE integrated AI tools being used
here to generate any code or prose. Everything here is written by one human
in the traditional fashion.
