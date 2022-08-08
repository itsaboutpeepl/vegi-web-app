import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vegan_liverpool/features/shared/widgets/snackbars.dart';

class CopyToClipboard extends StatelessWidget {
  CopyToClipboard({
    required this.content,
    this.textColor,
  });
  final String content;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Theme.of(context).canvasColor,
      highlightColor: Theme.of(context).canvasColor,
      child: Text(
        "Copy to clipboard",
        style: TextStyle(
          color: this.textColor ?? Theme.of(context).colorScheme.onSurface,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () async {
        Clipboard.setData(ClipboardData(text: content));
        showCopiedFlushbar(context);
      },
    );
  }
}
