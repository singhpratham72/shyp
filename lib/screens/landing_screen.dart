import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/textstyles.dart';
import 'package:shyp/screens/orders_screen.dart';
import 'package:shyp/services/navigation_helper.dart';
import 'package:shyp/widgets/custom_button.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationColors.primaryColor,
      body: SafeArea(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/shyp_logo.png'),
                  Text(
                    'shyp',
                    style: TextStyles.h1
                        .copyWith(color: Colors.white, fontSize: 64.0),
                  ),
                ],
              ),
              Text(
                'Truck Karo, Trust Karo',
                textAlign: TextAlign.center,
                style: TextStyles.bodyText
                    .copyWith(fontSize: 22.0, color: Colors.white),
              ),
              const Spacer(),
              CustomButton(
                label: 'Get Started',
                color: Colors.white,
                radius: 24.0,
                textColor: ApplicationColors.primaryColor,
                onTap: () {
                  NavigationHelper().push(context, const OrdersScreen());
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
