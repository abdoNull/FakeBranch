import 'package:dom_sys/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final String title;

  const CustomAppBar({
    super.key,
    required this.context,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          padding:  const EdgeInsets.all(8),
          height: 45.0.h,
          width: 45.0.w,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
          ),
          child: Image.asset(
            "assets/Notification.png",
            fit: BoxFit.contain,
            height: 24.0.h,
            width: 24.0.w,
          ),
        ),
      ],
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: AppColors.fontMainColor,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      centerTitle: true,
      elevation: 0,
      title: Text(
        title,
        style: TextStyle(color: AppColors.fontMainColor, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
