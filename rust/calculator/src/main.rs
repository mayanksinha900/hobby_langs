#[derive(Debug)]
struct KeyPress(String, char);

#[derive(Debug)]
struct MouseClick{
    x: i64,
    y: i64
}

#[derive(Debug)]
enum WebEvent{
    WELoad(bool),
    WEClick(MouseClick),
    WEKeys(KeyPress)
}

fn _main(){
    let click = MouseClick{x:250, y:250};
    println!("Mouse click @: ({}, {})", click.x, click.y);

    let keys = KeyPress("Ctrl+".to_string(), 'C');
    println!("Key press: {}{}", keys.0, keys.1);

    let we_load = WebEvent::WELoad(true);
    let we_click = WebEvent::WEClick(click);
    let we_keys = WebEvent::WEKeys(keys);
    
    println!("{:#?}, {:#?}, {:#?}", we_click, we_load, we_keys);
}

fn bye(message: &str){
    println!("\n{}", message);
}

fn main(){
    let formal = "Goodbye!";
    let casual = "See you later";

    bye(formal);
    bye(casual);
    _main();
}
