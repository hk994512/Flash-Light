import 'package:flutter/material.dart';
import 'package:torch/helpers/helper.dart';
import 'package:torch/models/app_colors.dart';

import 'views/torch_screen.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: AppColors.scaffoldbackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.appbarbackgroundColor,
        title: Helper.appText('Flash Light', color: AppColors.whiteColor),
      ),
      body: const FlashLight(),
    ),
  ),
);
