```dart
import 'dart:async';
import 'dart:io';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    //throw Exception('Network request failed');
    print('Data fetched successfully');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } on SocketException catch (e) {
    print('Socket error: $e');
  } on Exception catch (e) {
    print('General error: $e');
  } catch (e) {
    print('Unknown error: $e');
  } finally {
    print('Fetching complete');
  }
}

void main() async {
  await fetchData();
}
```