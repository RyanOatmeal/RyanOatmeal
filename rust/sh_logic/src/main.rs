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
    tmux::start::logic();
}
