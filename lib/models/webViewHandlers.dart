import 'package:js/js.dart';

@JS('console.log') // annotates `log` function to call `console.log`
external void JSlog(dynamic str);

@JS('getWalletAddress')
external String getWalletAddress();

@JS('getOrderAmounts')
external Map<String, String> getOrderAmounts();

@JS('getDisplayName')
external String getDisplayName();

@JS('makePayment')
external void paymentFunction(String paymentIntentID);
