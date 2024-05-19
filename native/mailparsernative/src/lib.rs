use mail_parser::*;

#[rustler::nif]
fn parse_email(input: &str) -> String {
    let message = MessageParser::default().parse(input).unwrap();
    serde_json::to_string_pretty(&message).unwrap()
}

rustler::init!("Elixir.MailParserEx", [parse_email]);
