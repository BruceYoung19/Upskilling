// libraries required
use std::io;
use std::time::SystemTime;
use rand::Rng;

// Constructor
struct Appointment{
    id:u8,
    user:String,
    description:String,
}
e
fn main() {
    // time right now
    //let sys_time = SystemTime::now();

    let mut randnum = Rng::thread_rng();
    println!("Welcome to the Brow Bush!");
    println!("Time right now, {}",randnum);
    println!("Please choose the following options:");
    println!("1. Making an appointment");
    println!("2. Check appointment");

    let mut choose = String::new();

    io::stdin() 
        .read_line(&mut choose)
        .expect("incorrect input");
    
    let x: i32 = choose.trim().parse().expect("Input not an integer");

    if(x == 1){
        
        let mut time = String::new();

        println!("Making Appointment");
        println!("What type would you like?");
        
        io::stdin()
            .read_line(&mut time)
            .expect("incorrect input");
        
        println!("Your appointment, {}",time);
        
    }

    else{
        println!("This is an err");
    }
}
