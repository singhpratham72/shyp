import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/data.dart';
import 'package:shyp/constants/textstyles.dart';
import 'package:shyp/models/order_model.dart';
import 'package:shyp/screens/landing_screen.dart';
import 'package:shyp/services/navigation_helper.dart';
import 'package:shyp/widgets/custom_button.dart';

class ConfirmBookingBottomSheet extends StatefulWidget {
  const ConfirmBookingBottomSheet({
    super.key,
  });

  @override
  State<ConfirmBookingBottomSheet> createState() =>
      _ConfirmBookingBottomSheetState();
}

class _ConfirmBookingBottomSheetState extends State<ConfirmBookingBottomSheet> {
  bool next = false;
  Order order = Data.order;
  @override
  Widget build(BuildContext context) {
    if (!next) {
      return Container(
        padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Consigner Details (Dispatch Form)',
                style: TextStyles.h2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      spreadRadius: 0.0,
                      blurRadius: 5.0,
                      offset: const Offset(0, 2.5))
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(order.consigner ?? ''),
                  Row(
                    children: const [
                      Icon(Icons.close),
                      SizedBox(width: 4.0),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  const SizedBox(width: 4.0),
                  Text(order.pickupLocation ?? ''),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const CustomButton(
                    label: '+ Add New Consigner Contact',
                    color: Colors.white,
                    radius: 16.0,
                    textColor: ApplicationColors.primaryColor,
                    borderColor: ApplicationColors.primaryColorLight,
                  ),
                  const SizedBox(height: 8.0),
                  CustomButton(
                    label: 'Next',
                    onTap: () {
                      setState(() {
                        next = true;
                      });
                    },
                    radius: 16.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Consignee Details (Ship To)',
                style: TextStyles.h2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      spreadRadius: 0.0,
                      blurRadius: 5.0,
                      offset: const Offset(0, 2.5))
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(order.consignee ?? ''),
                  Row(
                    children: const [
                      Icon(Icons.close),
                      SizedBox(width: 4.0),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  const SizedBox(width: 4.0),
                  Text(order.dropLocation ?? ''),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const CustomButton(
                    label: '+ Add New Consignee Contact',
                    color: Colors.white,
                    radius: 16.0,
                    textColor: ApplicationColors.primaryColor,
                    borderColor: ApplicationColors.primaryColorLight,
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          label: 'Back',
                          color: Colors.white,
                          radius: 16.0,
                          textColor: ApplicationColors.primaryColor,
                          borderColor: ApplicationColors.primaryColorLight,
                          onTap: () {
                            setState(() {
                              next = false;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: CustomButton(
                          label: 'Next',
                          radius: 16.0,
                          onTap: () {
                            NavigationHelper()
                                .pushAndRemoveU(context, const LandingScreen());
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
