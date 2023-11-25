const CHAR_1: char = 'a';

fn calculate_even_sum(bot: i32, top: i32) -> i32 {
    (bot..=top).filter(|x| x % 2 == 0).sum()
}

fn main() {
    let a: i64 = 2 * 31 + 7;

    println!("Hello, world!");
    println!("The number is {}.", a);
    let t1 = ("A", "Alpha", 5, 2.3);

    println!("Tuples: {} {}", t1.2, t1.1);

    temp();
    temp_2(CHAR_1);

    let sum_1 = calculate_even_sum(12, 100);
    println!("{}", sum_1);
}

fn temp() {
    let a: &str = "how are you today?";
    let b: char = 'c';

    println!("{} {}", a, b);
}

fn temp_2(char2: char) {
    println!("{}", char2);
}
