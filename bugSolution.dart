```dart
import 'dart:async';

Future<void> main() async {
  final completer = Completer<int>();

  // Simulate an asynchronous operation that might complete or throw an error
  Future.delayed(const Duration(seconds: 2), () {
    // Simulate an error
    throw Exception('Something went wrong!');
  }).then((value) {
    completer.complete(value);
  }).catchError((error) {
    completer.completeError(error); // Propagate error to future
  });

  try {
    final result = await completer.future;
    print('Result: $result');
  } catch (e) {
    // Handle the error explicitly
    print('Error caught: $e');
  }
}
```