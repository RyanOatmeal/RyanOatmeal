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
- `dash scripts/git/deploy_hooks.sh` for some git hooks.

## Uninstall 

Just delete the repository and `../secrets.env`.

# Use

- `dash scripts/<folder for collection of commands>/<command>.sh` 
- There's also markdown and text files in `notes`. The flavor of markdown used 
  is [CommonMark](https://commonmark.org/). 

# A note on Large Language Models

The only way that I use Large Language Models is by conversing with one when 
my progress slows down followed by copying and pasting in a generated snippet 
in the case that I've read it and fully understood it. This is no different 
than how any responsible programmer used forums like stackexchange in the past.

I've personally found any utility outside of that specific use case to be a 
hindrance and so I can assure you that nothing like an agentic AI has 
been involved in the process of making this repository. Just a single human 
typing away in a terminal who asks for advice occasionally as they've plodded 
along. 

Note: There is one exception to this policy which is that anything found in
`notes/pure` came straight from the voice in my head and nothing else. I
express this in more detail in `notes/pure/README.md`.
