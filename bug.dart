```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final data = jsonDecode(response.body);
      // Use the data
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```