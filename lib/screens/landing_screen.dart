import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/textstyles.dart';
import 'package:shyp/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationColors.primaryColor,
      body: SafeArea(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                'shyp',
                style: TextStyles.h1.copyWith(color: Colors.white),
              ),
              Text(
                'Truck Karo, Trust Karo',
                textAlign: TextAlign.center,
                style: TextStyles.bodyText
                    .copyWith(fontSize: 18.0, color: Colors.white),
              ),
              const Spacer(),
              CustomButton(
                label: 'Get Started',
                color: Colors.white,
                textColor: ApplicationColors.primaryColor,
                onTap: () {},
              ),
            ],
          ),
        ),
      )),
    );
  }
}
