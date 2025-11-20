use chumsky::prelude::*;

#[test]
fn test_parser() {
  assert_eq!(parser().parse("").into_result(), Ok(()));
  assert!(parser().parse("Anything else doesn't get parsed").has_errors());
}

fn parser<'src>() -> impl Parser<'src, &'src str, ()> {
  end()
}

fn main() {
    println!("Hello, world!");
}
