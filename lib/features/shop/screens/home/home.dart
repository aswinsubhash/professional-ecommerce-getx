
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:ecom/utils/constants/text_strings.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar
                  HomeAppBar(),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  /// -- Searchbar
                  AppSearchContainer(
                    text: AppTexts.homeSearch,
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(height: AppSizes.spaceBtwSections),

                  ///  -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        AppSectionHeading(
                          title: AppTexts.popularCategories,
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                        SizedBox(height: AppSizes.spaceBtwItems),

                        /// -- Categories
                        AppHomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
