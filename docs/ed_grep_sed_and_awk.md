# ed, grep, sed, and awk

This is my set of docs on understanding these tools and I often make use of 
the second edition of "sed & awk" by Dale Dougherty and Arnold Robbins.

## Basics 

Let's start with some dead simple commands. 

### ed

### Regular Expressions

Not much to say at this point besides the fact that I go by 
[this](https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap09.html)
standard. We'll see plenty of examples in the coming docs.

Also to note, I often abbreviate "Regular Expression" to "regexp" like most 
people do. 

### grep

It sounds right to say in my head that "grep is for grabbing" and it uses 
regex to grab the lines that I want from a text file.

We use `grep "<regex pattern>" <file name>` to do this. 

More questions? Consult 
[this](https://pubs.opengroup.org/onlinepubs/9799919799/utilities/grep.html)
standard.
