fn main() {
    println!("Hello, world!");
    temp();
}

fn temp() {
    println!("Temp functions.....");
    let (a,b) = (1, 2);
    let c = format!("{} + {} = 3", a, b);
    println!("{}",c);
}

