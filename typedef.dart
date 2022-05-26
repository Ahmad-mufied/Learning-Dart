typedef ID = int;
typedef Person = Map<String, dynamic>;
typedef Send = void Function(String message);

void sendTextMessage(String msg) {
  //* Some stuf related to SMS logic
  print(msg);
}

void sendEmail(String msg) {
  //* Some stuf ralated to email client logic
  print(msg);
}

void main() {
  // Using ID typedef
  const ID x1 = 10;
  const ID x2 = 20;

  print(x1);

  print(x2);

  // Using Person typedef
  final Person personOne = {"name": "The Invisible Man", "age": 100};

  final Person personTwo = {"name": "Spinning Man", "age": 50};

  print(personOne);

  print(personTwo);

  //* assign your typedef to any function matching the signatures.
  Send sendMessage = sendTextMessage;
  sendMessage("Hello! this is a text message");
  //* You can also change the return type and reassign on the fly.
  sendMessage = sendEmail;
  sendMessage("Hello! this is an email");
}
