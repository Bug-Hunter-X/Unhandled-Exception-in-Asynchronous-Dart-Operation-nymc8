# Unhandled Exception in Asynchronous Dart Operation

This repository demonstrates a common error in asynchronous Dart code:  inadequate exception handling. The `fetchData` function makes an HTTP request, parses JSON, and uses the result. However, the error handling isn't comprehensive, potentially leading to unexpected app crashes or silent failures.

The `bug.dart` file shows the problematic code, and `bugSolution.dart` provides a more robust solution.