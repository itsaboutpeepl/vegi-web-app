import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:vegan_liverpool/constants/theme.dart';

class SecondaryButton extends StatelessWidget {
  SecondaryButton({
    this.fontSize = 20,
    required this.onPressed,
    required this.buttonContent,
    this.width = 255.0,
    this.height = 50.0,
    this.preload = false,
    this.opacity = 0.4,
    this.disabled = false,
  });
  final double opacity;
  final GestureTapCallback onPressed;
  final Widget buttonContent;
  final double width;
  final double height;
  final bool preload;
  final bool disabled;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: disabled
              ? [Theme.of(context).colorScheme.secondary, Theme.of(context).colorScheme.secondary]
              : [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.primary,
                ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(11.0)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: disabled ? () {} : onPressed,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          highlightColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
          splashColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.6),
          child: buttonContent,
        ),
      ),
    );
  }
}
