
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watt/pages/main_page.dart';

class ButtonNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final Menus current;
  final Menus page_name;
  const ButtonNavigationItem(
      {super.key, required this.onPressed, required this.icon, required this.current, required this.page_name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(icon,
          colorFilter: ColorFilter.mode(
              current == page_name
                  ? Colors.black
                  : Colors.black.withOpacity(0.3),
              BlendMode.srcIn)),
    );
  }
}
