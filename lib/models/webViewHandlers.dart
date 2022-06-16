import 'package:js/js.dart';

@JS('console.log') // annotates `log` function to call `console.log`
external void JSlog(dynamic str);

@JS('getWalletAddress')
external Map<String, String> testingFunction();
