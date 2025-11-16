# Dragon Book

This is my set of notes on the first edition of 
"Compilers: Principles, Techniques, and Tools by
Alfred V. Aho, Ravi Sethi, and Jeffrey D. Ullman".

I have a blog that I'll occasionally link out to when I have something worth 
implementing or sharing.

# Lexing and Parsing

I will not be using any of the lexing and parsing material in the dragon book.

Instead I'll be using parser combinators as I find them better suited for my future
purposes. In particular, I'll be looking into a library called nom that is used in 
rust's cargo ecosystem.

# Syntax Directed Translation

Syntax directed translation is the act of "associating information with a programming
language construct by attaching attributes to the grammar symbols representing the 
construct". In this case, a language construct is going to be a syntax tree and the 
grammar symbols we attach attributes to are the nodes. 

"Values for attributes are computed by "semantic rules" associated with the grammar
productions." So we'll have a grammar token in a node, the grammar production 
associated with that node, and then an attribute which is computed based on the
semantic rule associated with the grammar production.
