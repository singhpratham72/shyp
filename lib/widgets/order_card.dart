import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/data.dart';
import 'package:shyp/constants/fonts.dart';
import 'package:shyp/constants/textstyles.dart';
import 'package:shyp/models/order_model.dart';
import 'package:shyp/screens/track_load_screen.dart';
import 'package:shyp/services/navigation_helper.dart';
import 'package:shyp/widgets/custom_button.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Order order = Data.order;
    return GestureDetector(
      onTap: () {
        // Navigate to TrackLoadScreen
        NavigationHelper().push(context, const TrackLoadScreen());
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 24.0, left: 16.0, right: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF000000).withOpacity(0.1),
                spreadRadius: 0.0,
                blurRadius: 5.0,
                offset: const Offset(0, 2.5))
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Price Pending', style: TextStyles.h3),
                CustomButton(
                  radius: 18.0,
                  padding: 6.0,
                  label: order.status,
                  textSize: FontSize.xS,
                  color: ApplicationColors.primaryColorLight.withOpacity(0.1),
                  textColor: ApplicationColors.primaryColor,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.radio_button_on,
                        size: 24.0,
                      ),
                      SizedBox(
                        height: 24.0,
                        child: VerticalDivider(
                          color: ApplicationColors.primaryColorLight,
                          thickness: 1.0,
                        ),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        size: 28.0,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              order.pickupLocation ?? '',
                              maxLines: 1,
                            ),
                            Text(
                              order.pickupDate ?? '',
                              maxLines: 1,
                              style: TextStyles.greyText,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              order.dropLocation ?? '',
                              maxLines: 1,
                            ),
                            Text(
                              order.dropDate ?? '',
                              maxLines: 1,
                              style: TextStyles.greyText,
                            )
                          ],
                        ),
                      ]),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${order.quantity} • ${order.materialType} • ${order.preferredVehicle}',
                  style: const TextStyle(
                      color: ApplicationColors.primaryColorLight),
                ),
                Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: ApplicationColors.primaryColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
