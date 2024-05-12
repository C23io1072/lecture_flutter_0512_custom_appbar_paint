//https://www.youtube.com/watch?v=3evwBhACgiQ

import 'package:flutter/material.dart';
import 'package:lecture_flutter/learned_otg/appbar_custom_2nd_try/background_painter_linear.dart';

class CustomAppBarLinearBack extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarLinearBack({
    super.key,
    this.title = '', //default
    this.leading,
    this.titleWidget,
    this.showActionIcon = false,
    this.onMenuActionTap,
    this.background,
    // this.backgroundColor,
  });

  final String title;
  final Widget? leading;
  final Widget? titleWidget;
  final bool showActionIcon;
  final VoidCallback? onMenuActionTap;
  final Widget? background;
  // final Color backgroundColor;

  // @override
  // Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: DrawLinearBackground(),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 0.8),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leading ??
                      Transform.translate(
                          offset: const Offset(-14, 0),
                          child: const BackButton()),
                  if (showActionIcon)
                    Transform.translate(
                      offset: const Offset(10, 0),
                      child: InkWell(
                        onTap: onMenuActionTap,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);
  // Size get preferredSize => const Size.fromHeight(100);
}
