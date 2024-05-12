import 'package:flutter/material.dart';

class CustomAppBar2ndTryCopy extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBar2ndTryCopy({
    super.key,
    // this.title = '', //default
    required this.title,
    required this.leading,
    required this.titleWidget,
    required this.backgroundColor,
  });

  final String title;
  final Widget? leading;
  final Widget? titleWidget;
  final Color backgroundColor;

  // @override
  // Size get prefferedSize => const Size(double.maxFinite, 80);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 2.5),
      child: Stack(
        children: [
          Positioned.fill(
            child: titleWidget == null
                ? Center(
                    child: Text(title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white)))
                : Center(child: titleWidget!),
          )
        ],
      ),
    );
  }
}
