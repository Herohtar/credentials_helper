import 'package:credentials_helper/credentials_helper.dart';

void main() {

  Credentials credentials = Credentials.fromFile('credentials.json');

  myApiCall(apiKey: credentials.apiKey);

}
