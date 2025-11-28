mod sh;

use sh::tmux;
use std::env;

fn main() {
    let arguments: Vec<String> = env::args().collect();
    let mut parameters: &[String] = &[];
    if let Some((_head, tail)) = arguments.split_first() {
        parameters = tail;
    }
    println!("parameters: {:?}", parameters);


    // Move this to a function that checks the first parameter as 
    // a proper file path to the script. Then also have it where 
    // there is a match statement that takes that path over to the
    // right function. After that, it's time to move onwards to 
    // the tmux windowing logic so you can get that cleared up and
    // move on to rlwrap configuring for ed. 
    // 
    // Also, the verification of the file path might just be a todo
    // on top of an identity function for now. I would rather wait
    // for a parser combinator solution for reasons I've detailed
    // elsewhere.
    match parameters.split_first() {
        Some((head, tail)) => {
            println!("Head of parameters: {}", head);
            println!("Tail of parameters: {:?}", tail);
        }
        None => {
            println!("Received None when splitting parameters");
        }
    }

    tmux::start::logic();
}
