
//! 2. Broadcast streams:
//* If you need multiple parts of your app to access the same stream,
//* use a broadcast stream, instead. A broadcast stream allows any number of listeners.
//* It fires when its events are ready, whether there are listeners or not. To create a broadcast stream,
//* you simply call asBroadcastStream() on an existing single subscription stream.


import 'dart:async';

// Initializing a stream controller for a broadcast stream
StreamController<String> controller = StreamController<String>.broadcast();

// Creating a new broadcast stream through the controller
Stream<String> stream = controller.stream;

void main() {
	// Setting up a subscriber to listen for any events sent on the stream
	StreamSubscription<String> subscriber1 = stream.listen((String data) {
		print('Subscriber1: ${data}');
	},
	onError: (error) {
		print('Subscriber1: ${error}');
	},
	onDone: () {
		print('Subscriber1: Stream closed!');
	});

	// Setting up another subscriber to listen for any events sent on the stream
	StreamSubscription<String> subscriber2 = stream.listen((String data) {
		print('Subscriber2: ${data}');
	},
	onError: (error) {
		print('Subscriber2: ${error}');
	},
	onDone: () {
		print('Subscriber2: Stream closed!');
	});

	// Adding a data event to the stream with the controller
	controller.sink.add('GeeksforGeeks!');

	// Adding an error event to the stream with the controller
	controller.addError('Error!');

	// Closing the stream with the controller
	controller.close();
}
