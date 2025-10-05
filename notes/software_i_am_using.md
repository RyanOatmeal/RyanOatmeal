# Software I'm Using

This is mostly a reference for me to know what to install if I have to migrate
systems but I intend for this to be expanded into a document that also details
exactly how I use all of these tools in the near future.

As a general rule of thumb, if a piece of software that I am using is described
in the most recent (POSIX)[https://pubs.opengroup.org/onlinepubs/9799919799/] 
standard

## Text Editing

I enjoy a terminal based, unix style approach.

### vi

I just use the modal text editor in a terminal according to 
[this](https://pubs.opengroup.org/onlinepubs/9799919799/utilities/vi.html)
standard. 
So the exact package I might be using at any time doesn't matter. 

I'm happy using either of the following:
- https://www.vim.org/
- https://neovim.io/

I'm also happy just typing vi in whatever available terminal and hoping for the best!

At the moment, I'm on a fedora machine using the vi command which just runs vim 
with $VIM_POSIX=1 in my ~/.bashrc in order to keep the editor lean and mean. 
See https://vi.stackexchange.com/questions/23008/posix-compliant-vi-implementations

### grep

I use
https://www.gnu.org/software/grep/
but only the parts that can be found in
https://pubs.opengroup.org/onlinepubs/9799919799/utilities/grep.html

### sed

https://www.gnu.org/software/sed/

### awk

I use the following with the `--posix` flag: 
https://www.gnu.org/software/gawk/

See the following for information about `--posix`:
https://www.gnu.org/software/gawk/manual/html_node/Options.html

## Terminal

### foot

https://codeberg.org/dnkl/foot

### tmux

https://github.com/tmux/tmux/wiki

### bash

https://www.gnu.org/software/bash/

### coreutils

https://www.gnu.org/software/coreutils/

## Other

### dash

http://gondor.apana.org.au/~herbert/dash/
https://packages.debian.org/sid/dash

### Nerdfonts

https://www.nerdfonts.com/

### git

https://git-scm.com/

### gpg

I just use this to protect the world from my caffeine fueled blabbering 
in `notes/project_planning.txt`.

https://www.gnupg.org/
