```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the JSON response here.  This is where the bug might be.
      final jsonData = jsonDecode(response.body);
      //Use jsonData
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    //Handle exception. Do not print the exception directly to console in production.
    print('Error: $e');
  }
}
```