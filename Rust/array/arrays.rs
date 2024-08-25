// Learning how to use arrays

fn main (){
    let numbers = [1,2,3,4,5];
    // let numbers = [2;400]; // this is how you can declare something 400 times.

    for n in numbers.iter(){
        println!("{}",n);
    }
}
