# Unhandled Exception in Dart Future

This example showcases a common issue in Dart asynchronous programming involving unhandled exceptions within Futures. The `bug.dart` file contains code that simulates an asynchronous operation that might throw an exception.  The `bugSolution.dart` file provides a corrected version with improved error handling.

**Problem:** The original code uses `then` and `catchError` but doesn't correctly propagate the error, potentially leading to silent failures or unexpected behavior. 

**Solution:** The solution uses `try-catch` directly with `await` to explicitly handle potential exceptions, ensuring robust error handling.