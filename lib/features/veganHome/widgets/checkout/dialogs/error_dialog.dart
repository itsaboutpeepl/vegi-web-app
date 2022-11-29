import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vegan_liverpool/common/router/routes.dart';
import 'package:vegan_liverpool/features/shared/widgets/primary_button.dart';

class ErrorDialog extends StatefulWidget {
  const ErrorDialog({
    Key? key,
    this.title = 'Something went wrong',
    this.message = 'Please try again later!',
  }) : super(key: key);

  final String title;
  final String message;

  @override
  State<ErrorDialog> createState() => _ErrorDialogState();
}

class _ErrorDialogState extends State<ErrorDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    controller
      ..addListener(() {
        setState(() {});
      })
      ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 28, right: 28),
            child: Center(
              child: SizedBox(
                width: 60,
                height: 60,
                child: Icon(
                  Icons.error_outline,
                  size: 50,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
            ),
          ),
        ),
        content: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          PrimaryButton(
            onPressed: () {
              context.router.navigate(const VeganHomeScreen());
            },
            label: "Okay",
          )
        ],
      ),
    );
  }
}
