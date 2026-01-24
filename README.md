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

This repository is under the MIT license found in `LICENSE`.

# Provenance

When I first started out making this repository, I used Gemini as a glorified 
google search engine. But after getting frustrated a few too many times with 
the output, I found it not worth my time. **So I do not intentionally use LLM's for any of
my work.** I'm just a single developer using manuals, a unix like desktop 
environment, and what's left of human centric forums like stack overflow.
