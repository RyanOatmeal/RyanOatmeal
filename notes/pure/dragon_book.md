# Dragon Book

This is my set of notes on the first edition of 
"Compilers: Principles, Techniques, and Tools by
Alfred V. Aho, Ravi Sethi, and Jeffrey D. Ullman".

# Lexing and Parsing

I will not be using any of the lexing and parsing material in the dragon book.

Instead I'll be using parser combinators as I find them better suited for my future
purposes. In particular, I'll be looking into a library called chumsky that is used 
in rust's cargo ecosystem.

I don't know if I fully understand yet (I hopefully will after playing around with
parser combinators), but it seems to me that the goal of lexing and parsing is to
construct "recognizer" automata. These are string machines that basically give you
a checkmark if a string accords to the rule of the automata or else it tells you 
the string is bad.

Before heading over to syntax directed translation. I'm going to go mess around with
chumsky and see what is possible so that I can get an idea of *exactly* what lexing 
and parsing mean to me and how syntax directed translation is seperate from parsing.

# Syntax Directed Translation

