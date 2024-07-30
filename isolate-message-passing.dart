import 'dart:async';
import 'dart:isolate';

// Isolate entry point function
void isolateEntryPoint(SendPort sendPort) {
  int counter = 0;
  Timer.periodic(Duration(seconds: 1), (timer) {
    counter++;
    sendPort.send('Counter: $counter');
  });
}

void main() async {
  // Create a ReceivePort to receive messages from the isolate
  final receivePort = ReceivePort();

  // Spawn an isolate
  await Isolate.spawn(isolateEntryPoint, receivePort.sendPort);

  // Listen for messages from the isolate
  await for (var message in receivePort) {
    print(message);
  }
}
