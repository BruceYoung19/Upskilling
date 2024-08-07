// libraries required
use std::io;

fn main(){
    // This is how to comment in one line
    println!("Guess the Number!");

    let mut guess = String::new();
    
    io::stdin() // how rust takes inputs
        .read_line(&mut guess)
        .expect("Failed to read the line");
    
    println!("What you guessed: {}",guess);
}
