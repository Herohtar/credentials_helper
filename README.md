# credentials_helper

The idea behind this package is to provide a simple way to use various credentials in a project (particularly during development/testing) that is less prone to result in a private API key or the like being commited or published along with your code.

You can store your API keys, usernames, passwords, etc. in a JSON file that is either listed in your `.gitignore` or completely outside the project directory and load them into this class. You could also retrieve them from other JSON sources.

## Example
```dart
import 'package:credentials_helper/credentials_helper.dart';

void main() {

  Credentials credentials = Credentials.fromFile('credentials.json');

  myApiCall(apiKey: credentials.apiKey);

}
```
