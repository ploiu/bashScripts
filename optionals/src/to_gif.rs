use clap::Parser;
use std::path::PathBuf;

/// Converts a video file to gif format using ffmpeg
#[derive(Parser, Debug)]
struct Args {
    /// Input file path (positional)
    #[clap(value_name = "FILE", index = 1)]
    file: PathBuf,

    /// Frames per second
    #[clap(short = 'f', long = "fps", default_value_t = 30)]
    fps: u32,

    /// Width for scaling, use -1 to preserve aspect
    #[clap(short, long, default_value_t = -1)]
    width: i32,

    /// Height for scaling, use -1 to preserve aspect
    #[clap(short = 'i', long, default_value_t = -1)]
    height: i32,

    /// Output path
    #[clap(short = 'o', long = "output", value_name = "OUT")]
    output: Option<PathBuf>,
}

fn main() {
    let args = Args::parse();
    println!("Input file: {args:?}");
}
