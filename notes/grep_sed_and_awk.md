# grep, sed, and awk

This is my set of notes while reading the second edition of "sed & awk" by 
Dale Dougherty and Arnold Robbins.

## Basics 

Let's get started with some super simple commands. The first thing to note is 
that grep, sed, and awk work "line by line". 

### Regular Expressions

Not much to say at this point besides the fact that I go by 
(this)[https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap09.html]
standard. We'll see plenty of examples in the coming notes.

Also to note, I often abbreviate "Regular Expression" to "regexp". 

### grep

It sounds right to say in my head that "grep is for grabbing" and it uses 
regex to grab the lines that I want from a text file.

We use `grep "<regex pattern>" <file name>` to do this. 

More questions? Consult 
(this)[https://pubs.opengroup.org/onlinepubs/9799919799/utilities/grep.html]
standard.
