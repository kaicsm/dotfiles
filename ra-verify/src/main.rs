use std::net::TcpListener;

fn main() {
    let port = 27800;

    match TcpListener::bind(("127.0.0.1", port)) {
        Ok(_) => {
            println!("Port {} is not in use", port);
            std::process::exit(0);
        }
        Err(_) => {
            println!("Port {} is in use.", port);
            std::process::exit(1);
        }
    }
}

