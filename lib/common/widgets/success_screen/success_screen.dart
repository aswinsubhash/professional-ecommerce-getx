import 'package:flutter/material.dart';

import '../../styles/spacing_styles.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

import '../../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    Key? key,
    required this.subTitle,
    required this.title,
    required this.image,
    required this.onPressed,
  }) : super(key: key);

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSpacingStyles.paddingWithAppBarHeight * 2.5,
        child: Column(
          children: [
            /// Image
            Image(
              image:  AssetImage(
                image
              ),
              width: AppHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
      
            /// Title and Subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
             subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
      
            /// Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text(AppTexts.appContinue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
