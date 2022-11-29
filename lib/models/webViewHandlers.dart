import 'package:js/js.dart';

@JS('console.log') // annotates `log` function to call `console.log`
external void JSlog(dynamic str);

@JS('getWalletAddress')
external String getWalletAddress();

@JS('getSelectedPaymentAmounts')
external dynamic getSelectedPaymentAmounts();

@JS('getDisplayName')
external String getDisplayName();

@JS('callPaymentHandlerOnDevice')
external void callPaymentHandlerOnDevice(
  String paymentIntentID,
  String selectedPaymentMethod,
);

@JS('getUserInformation')
external dynamic getUserInformation();
