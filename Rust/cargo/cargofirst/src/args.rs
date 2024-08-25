use clap ::{
    Args,
    Parser,
    SubCommand
};

#[dervice(Debug,Parser)]
#[clap(author,version , about)]

pub struct RustArgs{
    // comment one
    pub first_arg:String
}