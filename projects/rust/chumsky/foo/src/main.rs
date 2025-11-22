use std::env;
use std::fs;

enum Expr<'src> {
    Num(f64),
    Var(&'src str),

    Neg(Box<Expr<'src>>),
    Add(Box<Expr<'src>>, Box<Expr<'src>>),
    Sub(Box<Expr<'src>>, Box<Expr<'src>>),
    Mul(Box<Expr<'src>>, Box<Expr<'src>>),
    Div(Box<Expr<'src>>, Box<Expr<'src>>),

    Call(&'src str, Vec<Expr<'src>>),
    Let {
        name: &'src str,
        rhs: Box<Expr<'src>>,
        then: Box<Expr<'src>>,
    },
    Fn {
        name: &'src str,
        args: Vec<&'src str>,
        body: Box<Expr<'src>>,
        then: Box<Expr<'src>>,
    },
}

// Use https://users.rust-lang.org/t/should-unit-tests-really-be-put-in-the-same-file-as-the-source/62153
// for writing the tests.
fn retrieve_file_path<'a>(arguments: &'a Vec<String>) -> Result<&'a str, &'static str> {
    if arguments.len() < 2 {
        return Err("Must provide file name argument.");
    }

    if arguments.len() > 2 {
        return Err("Must provide only one argument which is the filename.");
    }

    let file_path = &arguments[1];

    if !file_path.ends_with(".foo") {
        return Err("File path must be of form `<name>.foo`.");
    }

    Ok(&arguments[1])
}

fn retrieve_source() -> String {
    let args: Vec<String> = env::args().collect();
    let file_path: &str;
    match retrieve_file_path(&args) {
        Ok(result) => {
            file_path = result;
        }
        Err(error_message) => {
            panic!("Error retrieving file path: {}", error_message);
        }
    }

    let source = fs::read_to_string(file_path).expect(&format!(
        "Should have been able to read the file: {}",
        file_path
    ));

    source
}

fn main() {
    let source = retrieve_source();
    println!("{}", source);
}
