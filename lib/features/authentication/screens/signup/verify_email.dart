import 'package:ecom/features/authentication/screens/login/login.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: AssetImage('assets/images/animations/techny-email-marketing-and-newsletter.gif'))
              /// Title and Subtitle

              /// Buttons
            ],
          ),
        ),
      ),
    );
  }
}
