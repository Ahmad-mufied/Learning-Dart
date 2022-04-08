import 'dart:async';

StreamController<double> controller = StreamController<double>();
Stream stream = controller.stream;

void main() {
  // The listen call returns a StreamSubscription of the type of your stream.

  StreamSubscription streamSubscription = stream.listen((value) {
    print('value from controller: $value');
  });

  controller.add(12);
  controller.add(11);

  // streamSubscription.cancel();

}