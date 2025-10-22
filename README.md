# Hi there 👋

I'm building a knowledge base.

# Requirements

- A `../secrets.env` file of the following form:
  
  + ```
    TOKEN=<Your fine grained personal access token which allows you to push up to github>
    PASS_PHRASE=<The pass phrase you use to decrypt the project planning document>
    ```
- My [nixos](https://nixos.org/) configuration found in `./nixos`.

# Installation

- `git clone https://github.com/RyanOatmeal/RyanOatmeal.git` 
- `cd RyanOatmeal` 
- `dash scripts/git/deploy_hooks.sh` for some pre-commit hooks.

## Uninstall 

Just delete the repository and `../secrets.env`.

# A note on Large Language Models

The only way that I use Large Language Models is by conversing with one when 
my progress slows down and maybe copy pasting in a snippet in the case that 
I've read it, like what I see, and have fully understood that snippet. This is 
no different than how any responsible programmer used forums like
stackexchange in the past.

I've personally found any utility outside of that specific use case to be a 
hindrance and so I can assure you that nothing like an agentic AI has 
been involved in the process of making this repository. Just a single human 
typing away in a terminal who asks for advice occasionally as they've plodded 
along. 
