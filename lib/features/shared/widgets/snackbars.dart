import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegan_liverpool/generated/l10n.dart';

void showErrorSnack({
  required BuildContext context,
  String? title,
  int duration = 3,
  EdgeInsets? margin,
  String? message,
}) {
  Flushbar(
      boxShadows: [
        BoxShadow(
          offset: Offset(0.5, 0.5),
          blurRadius: 5,
        ),
      ],
      duration: Duration(seconds: duration),
      titleText: Text(
        title ?? I10n.of(context).transaction_failed,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      messageText: Text(
        message ?? "Try again later!",
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
      backgroundColor: Theme.of(context).bottomAppBarColor,
      margin: margin ?? EdgeInsets.only(top: 8, right: 8, left: 8, bottom: MediaQuery.of(context).size.height * 0.01),
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
      icon: SvgPicture.asset(
        'assets/images/failed_icon.svg',
        width: 20,
        height: 20,
      ))
    ..show(context);
}

void showCopiedFlushbar(context) {
  Flushbar(
    duration: Duration(seconds: 1),
    boxShadows: [
      BoxShadow(
        offset: Offset(0.5, 0.5),
        blurRadius: 5,
      ),
    ],
    messageText: Text(
      I10n.of(context).copied_to_clipboard,
      textAlign: TextAlign.center,
    ),
    backgroundColor: Theme.of(context).bottomAppBarColor,
    margin: EdgeInsets.only(
      top: 25,
      right: 25,
      left: 25,
      bottom: 25,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  )..show(context);
}

void showPlayBackCompletedFlushBar(context) {
  Flushbar(
    duration: Duration(seconds: 4),
    boxShadows: [
      BoxShadow(
        offset: Offset(0.5, 0.5),
        blurRadius: 5,
      ),
    ],
    messageText: Text(
      "Thanks for watching. Your Reward will be added to your wallet.",
      textAlign: TextAlign.center,
    ),
    backgroundColor: Theme.of(context).bottomAppBarColor,
    margin: EdgeInsets.only(
      top: 8,
      right: 8,
      left: 8,
      bottom: 10,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  )..show(context);
}
