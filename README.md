# Insufficient Error Handling in API Data Fetching

This repository demonstrates a common error in Dart code: insufficient error handling when fetching and processing JSON data from an API.  The provided code lacks robust error handling, which can lead to unexpected crashes or incorrect behavior.

## The Bug

The `fetchData` function attempts to fetch data from an API.  While it includes a `try-catch` block, the error handling is minimal. It prints the error to the console, but doesn't handle specific error types (like JSON decoding errors) or provide informative error messages to the user.

## The Solution

The solution improves error handling by:

*   Using `jsonDecode` within a try-catch block to handle potential JSON decoding errors explicitly.
*   Providing more informative error messages based on the error type.
*   Implementing appropriate logging for debugging purposes. 

## How to run the code

*   Make sure you have Dart SDK installed. 
*   Clone the repository.
*   Run the code using the Dart VM (dart bug.dart) and observe the behavior.
*   Run the solution code using the Dart VM (dart bugSolution.dart) and observe the improved error handling.
