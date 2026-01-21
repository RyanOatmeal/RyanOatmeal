# SRFI REFERENCE

This is a document for srfi's that I think might be 
important to me based on my first cursory glance of 
the list and following traversals based on my needs
at the time.

## [srfi-0](https://srfi.schemers.org/srfi-0/)

You can use this to check for the existence of a 
feature and then offer alternative functionality
if it doesn't exist. 

## [srfi-1](https://srfi.schemers.org/srfi-1/) 

This has a bunch of helper functions for working with 
lists.

## [srfi-2](https://srfi.schemers.org/srfi-2/)

A cross-breed between LET* and AND. 

## [srfi-6](https://srfi.schemers.org/srfi-6/)

Basic string ports. Seems like good infrastructure.

## [srfi-9](https://srfi.schemers.org/srfi-9/)

Record data structure.

## [srfi-13](https://srfi.schemers.org/srfi-13/)

A string library.

## [srfi-14](https://srfi.schemers.org/srfi-14/)

Character set library.

## [srfi-19](https://srfi.schemers.org/srfi-19/)

Time library.

## [srfi-23](https://srfi.schemers.org/srfi-23/)

Error reporting.

## [srfi-25](https://srfi.schemers.org/srfi-25/)

Multi-dimensional arrays. 

## [srfi-27](https://srfi.schemers.org/srfi-27/)

Random number library.

## [srfi-28](https://srfi.schemers.org/srfi-28/)

String formatting library.

## [srfi-34](https://srfi.schemers.org/srfi-34/)

Exception Handling.

## [srfi-41](https://srfi.schemers.org/srfi-41/)

Stream Library.

## [srfi-42](https://srfi.schemers.org/srfi-42/)

List comprehension. Eager.

## [srfi-43](https://srfi.schemers.org/srfi-43/)

Vector library.

## [srfi-44](https://srfi.schemers.org/srfi-44/)

Collections library.

## [srfi-54](https://srfi.schemers.org/srfi-54/)

Formatting objects/values into strings. It's a CAT procedure with
some extra arguments.

## [srfi-60](https://srfi.schemers.org/srfi-60/)

Integers as bits.

## [srfi-63](https://srfi.schemers.org/srfi-63/)

Arrays.

## [srfi-64](https://srfi.schemers.org/srfi-64/)

Test suite.

## (srfi-66)[https://srfi.schemers.org/srfi-66/]

Octet/byte manipulation library.

## (srfi-69)[https://srfi.schemers.org/srfi-69/]

Basic Hash Tables

## (srfi-70)[https://srfi.schemers.org/srfi-70/]

Number library.

## (srfi-74)[https://srfi.schemers.org/srfi-74/]

For octet-addressed binary blocks. BLOBS

## [srfi-94](https://srfi.schemers.org/srfi-94/)

Number type checking.

## [srfi-95](https://srfi.schemers.org/srfi-95/)

Sorting and merging.

## [srfi-98](https://srfi.schemers.org/srfi-98/)

For retrieving environment variables.

## [srfi-107](https://srfi.schemers.org/srfi-107/)

XML reader

## [srfi-109](https://srfi.schemers.org/srfi-109/)

Multi-line strings.

## [srfi-111](https://srfi.schemers.org/srfi-111/)

Box data structure. Called "half a pair" and seems 
to be a precursor to making sets. Might be worth 
looking into.

## [srfi-113](https://srfi.schemers.org/srfi-113/)

Sets and bags data structures.

## [srfi-115](https://srfi.schemers.org/srfi-115/)

Regular expression library.

## [srfi-117](https://srfi.schemers.org/srfi-117/)

Queue library.

## [srfi-118](https://srfi.schemers.org/srfi-118/)

For working with scheme's weird string sizing thing.

## [srfi-120](https://srfi.schemers.org/srfi-120/)

Timer API. But try to use threads first  
because it's apparently better to use threads
than this.


## [srfi-123](https://srfi.schemers.org/srfi-123/)

Nice collection accessor operators. 

## [srfi-124](https://srfi.schemers.org/srfi-124/)

Ephemeron data structure.

## [srfi-127](https://srfi.schemers.org/srfi-127/)

An interesting generalization of lists that might be worth
looking into.

## [srfi-134](https://srfi.schemers.org/srfi-134/)

immutable deques data structure

## [srfi-141](https://srfi.schemers.org/srfi-141/)

integer division

## [srfi-142](https://srfi.schemers.org/srfi-142/)

Bitwise operations on integers.

## [srfi-143](https://srfi.schemers.org/srfi-143/)

fixnum (fixed sized integers like from -2^10 to 2^10) arithmetic

## [srfi-144](https://srfi.schemers.org/srfi-144/)

Working with flonums, a floating point number implementation.


## [srfi-146](https://srfi.schemers.org/srfi-146/)

Maps!

## [srfi-153](https://srfi.schemers.org/srfi-153/)

Ordered Sets

## [srfi-173](https://srfi.schemers.org/srfi-173/)

Hooks like what I'm used to in react? We'll see how it works I guess.

## [srfi-170](https://srfi.schemers.org/srfi-170/)

The posix library functions.

## [srfi-171](https://srfi.schemers.org/srfi-171/)

A more general map, reduce, filter data structure.



## [srfi-180](https://srfi.schemers.org/srfi-180/)

JSON!!!


## [srfi-189](https://srfi.schemers.org/srfi-189/)

Maybe and either. Optional containers like in rust.

## [srfi-193](https://srfi.schemers.org/srfi-193/)

Working with and parsing command line arguments given to scheme.

## [srfi-196](https://srfi.schemers.org/srfi-196/)

Range data structure.

## [srfi-197](https://srfi.schemers.org/srfi-197/)

Pipeline operators.

## [srfi-201](https://srfi.schemers.org/srfi-201/)

Sexier lambda, let, and let* with pattern matching.


## [srfi-238](https://srfi.schemers.org/srfi-238/)

Working with nonsense like bash or posix codes. 

## [srfi-239](https://srfi.schemers.org/srfi-239/)

List destructuring


## [srfi-242](https://srfi.schemers.org/srfi-242/)

Control flow graph language. 
Also copied at [srfi-265](https://srfi.schemers.org/srfi-265/) for some reason?

## [srfi-244](https://srfi.schemers.org/srfi-244/)

Multiple value definitions.



## [srfi-253](https://srfi.schemers.org/srfi-253/)

type checking on data.

## [srfi-209](https://srfi.schemers.org/srfi-209/)

Enums



## [srfi-210](https://srfi.schemers.org/srfi-210/)

Working with multi-value stuff? I'll have to look into it more.

## [srfi-211](https://srfi.schemers.org/srfi-211/)

Extra libraries for working with macros.


## [srfi-215](https://srfi.schemers.org/srfi-215/)

Logging.

## [srfi-217](https://srfi.schemers.org/srfi-217/)

Working with unordered collections of fixnums. 

## [srfi-219](https://srfi.schemers.org/srfi-219/)

Defining higher order lambdas.


## [srfi-225](https://srfi.schemers.org/srfi-225/)

dictionaries.



## [srfi-232](https://srfi.schemers.org/srfi-232/)

Libraries for currying.

## [srfi-233](https://srfi.schemers.org/srfi-233/)

INI file reader

## [srfi-234](https://srfi.schemers.org/srfi-234/)

Topological sort.

## [srfi-235](https://srfi.schemers.org/srfi-235/)

Combinators.

# SRFI Combinations

Some of these srfi's build on each other. 

## [srfi-28](https://srfi.schemers.org/srfi-28/) and [srfi-48](https://srfi.schemers.org/srfi-48/) 

String formatting.

## [srfi-9](https://srfi.schemers.org/srfi-9/) and [srfi-57](https://srfi.schemers.org/srfi-57/) and (srfi-99)[https://srfi.schemers.org/srfi-99/] and [srfi-136](https://srfi.schemers.org/srfi-136/)

Records

## [srfi-58](https://srfi.schemers.org/srfi-58/) and [srfi-63](https://srfi.schemers.org/srfi-63/) and [srfi-163](https://srfi.schemers.org/srfi-163/) and [srfi-164](https://srfi.schemers.org/srfi-164/) and [srfi-179](https://srfi.schemers.org/srfi-179/)

Arrays

## (srfi-69)[https://srfi.schemers.org/srfi-69/] and (srfi-125)[https://srfi.schemers.org/srfi-125/] and [srfi-90](https://srfi.schemers.org/srfi-90/) and [srfi-250](https://srfi.schemers.org/srfi-250/) and [srfi-231](https://srfi.schemers.org/srfi-231/)

Hash tables.

## [srfi-64](https://srfi.schemers.org/srfi-64/) and [srfi-78](https://srfi.schemers.org/srfi-78/) and [srfi-252](https://srfi.schemers.org/srfi-252/)

Testing.

## [srfi-13](https://srfi.schemers.org/srfi-13/) and and [srfi-130](https://srfi.schemers.org/srfi-130/)

String processing.

## [srfi-95](https://srfi.schemers.org/srfi-95/) and [srfi-132](https://srfi.schemers.org/srfi-132/)

Sorting

## [srfi-43](https://srfi.schemers.org/srfi-43/) and [srfi-133](https://srfi.schemers.org/srfi-133/) and [srfi-160](https://srfi.schemers.org/srfi-160/) and [srfi-160](https://srfi.schemers.org/srfi-160/) and [srfi-178](https://srfi.schemers.org/srfi-178/) and [srfi-214](https://srfi.schemers.org/srfi-214/) and [srfi-223](https://srfi.schemers.org/srfi-223/)

Vectors

## [srfi-118](https://srfi.schemers.org/srfi-118/) and [srfi-130](https://srfi.schemers.org/srfi-130/) and [srfi-135](https://srfi.schemers.org/srfi-135/) and [srfi-140](https://srfi.schemers.org/srfi-140/) and [srfi-152](https://srfi.schemers.org/srfi-152/) and [srfi-185](https://srfi.schemers.org/srfi-185/) and [srfi-264](https://srfi.schemers.org/srfi-264/) and [srfi-267](https://srfi.schemers.org/srfi-267/)

MORE string nonsense? Jesus

## [srfi-142](https://srfi.schemers.org/srfi-142/) and [srfi-151](https://srfi.schemers.org/srfi-151/)

Bitwise operations.

## [srfi-41](https://srfi.schemers.org/srfi-41/) and [srfi-158](https://srfi.schemers.org/srfi-158/) and [srfi-190](https://srfi.schemers.org/srfi-190/) and [srfi-221](https://srfi.schemers.org/srfi-221/)

Working with streams.

## [srfi-111](https://srfi.schemers.org/srfi-111/) and [srfi-161](https://srfi.schemers.org/srfi-161/) and [srfi-195](https://srfi.schemers.org/srfi-195/)

More fun with boxes.

## [srfi-165](https://srfi.schemers.org/srfi-165/) and [srfi-166](https://srfi.schemers.org/srfi-166/) and [srfi-247](https://srfi.schemers.org/srfi-247/)

Some monadic stuff, fun. 

## [srfi-168](https://srfi.schemers.org/srfi-168/) and [srfi-167](https://srfi.schemers.org/srfi-167/)

Key value stuff


## [srfi-170](https://srfi.schemers.org/srfi-170/) and [srfi-174](https://srfi.schemers.org/srfi-174/)

POSIX

## [srfi-35](https://srfi.schemers.org/srfi-35/) and [srfi-175](https://srfi.schemers.org/srfi-175/)

Character libraries.

## [srfi-27](https://srfi.schemers.org/srfi-27/) and [srfi-194](https://srfi.schemers.org/srfi-194/)

Randomness.


## [srfi-2](https://srfi.schemers.org/srfi-2/) and [srfi-202](https://srfi.schemers.org/srfi-202/)

Extending entry for srfi-2 I have up above.

## [srfi-241](https://srfi.schemers.org/srfi-241/) and [srfi-257](https://srfi.schemers.org/srfi-257/) and [srfi-262](https://srfi.schemers.org/srfi-262/)

Pattern matching
