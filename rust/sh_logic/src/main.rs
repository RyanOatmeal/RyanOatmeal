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
