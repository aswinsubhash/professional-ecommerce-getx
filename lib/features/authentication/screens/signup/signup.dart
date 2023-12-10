import 'package:ecom/common/styles/spacing_styles.dart';
import 'package:ecom/common/widgets/login_signup/form_divider.dart';
import 'package:ecom/common/widgets/login_signup/social_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithoutAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(AppTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Form
              const AppSignupForm(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              /// Divider
              AppFormDivider(dividerText: AppTexts.orSignUpWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Social Buttons
              const AppSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

