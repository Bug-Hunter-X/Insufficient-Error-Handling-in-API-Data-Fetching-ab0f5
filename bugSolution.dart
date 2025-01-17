```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        //Use jsonData
      } catch (jsonError) {
        print('Error decoding JSON: $jsonError');
        //Handle the jsonError as needed
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e, stacktrace) {
    print('Error: $e, stacktrace: $stacktrace');
    //Report error to error monitoring system like Sentry, Firebase Crashlytics etc
    // Handle exception appropriately for production (show user friendly message, log the error, etc)
  }
}
```