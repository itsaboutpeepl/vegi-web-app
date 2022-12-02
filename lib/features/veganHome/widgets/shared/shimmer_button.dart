import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vegan_liverpool/constants/theme.dart';

class ShimmerButton extends StatelessWidget {
  const ShimmerButton({
    Key? key,
    required this.buttonContent,
    required this.buttonAction,
    required this.baseColor,
    required this.highlightColor,
    this.isLoading = false,
  }) : super(key: key);

  final Widget buttonContent;
  final void Function() buttonAction;
  final Color baseColor;
  final Color highlightColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonAction,
      child: Stack(
        children: [
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Shimmer.fromColors(
                period: const Duration(seconds: 3),
                baseColor: baseColor,
                highlightColor: baseColor,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: themeShade500,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4, 4),
                        blurRadius: 5,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 5,
                bottom: 5,
              ),
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : buttonContent,
            ),
          ),
        ],
      ),
    );
  }
}
