import 'package:ejara_demo/core/style/app_colors.dart';
import 'package:flutter/material.dart';

class BoxDecore {
  static BoxDecoration boxDecoration(BoxConstraints cts) {
    return BoxDecoration(
      color: AppColors.backgroundColor,
      borderRadius: BorderRadius.all(
        Radius.circular(cts.maxWidth * 0.03),
      ),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 2),
          blurRadius: 2,
        )
      ],
    );
  }
}
