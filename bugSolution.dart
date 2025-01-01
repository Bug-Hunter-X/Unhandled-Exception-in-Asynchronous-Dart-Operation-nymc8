```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
          //Use data
      } catch (e) {
        print('Error decoding JSON: $e');
        //Handle JSON decoding error appropriately. 
        //Example: return a default value or display an error message
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Consider more sophisticated error handling based on the type of exception
  }
}
```