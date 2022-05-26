import 'dart:async';

//! // 1. Single Subscription Streams:

//* Single subscription streams are the default. They work well when you’re only using a particular stream on one screen.
//* A single subscription stream can only be listened to once. It doesn’t start generating events until it has a listener and it stops sending events when the listener stops listening, even if the source of events could still provide more data.
//* Single subscription streams are useful to download a file or for any single-use operation. For example, a widget can subscribe to a stream to receive updates about a value, like the progress of a download, and update its UI accordingly.

// Initializing a stream controller
StreamController<String> controller = StreamController<String>();

// Creating a new stream through the controller
Stream<String> stream = controller.stream;

void main() {
  // Setting up a subscriber to listen for any events sent on the stream
  StreamSubscription<String> subscriber = stream.listen((String data) {
    print(data);
  }, onError: (error) {
    print(error);
  }, onDone: () {
    print('Stream closed!');
  });

  // Adding a data event to the stream with the controller
  controller.add('GeeksforGeeks!');

  // Adding an error event to the stream with the controller
  controller.addError('Error!');

  // Closing the stream with the controller
  controller.close();
}
