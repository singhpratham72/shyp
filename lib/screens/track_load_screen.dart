import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/fonts.dart';
import 'package:shyp/constants/textstyles.dart';
import 'package:shyp/widgets/custom_button.dart';

class TrackLoadScreen extends StatelessWidget {
  const TrackLoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 72.0,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: ApplicationColors.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 22.0,
                        color: ApplicationColors.primaryColor,
                      )),
                ),
                Text(
                  'Order #79',
                  style: TextStyles.h1.copyWith(fontSize: 28.0),
                ),
                const Icon(
                  Icons.more_vert,
                  size: 28.0,
                  color: ApplicationColors.primaryColor,
                )
              ],
            ),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        bottom: 24.0, left: 16.0, right: 16.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12.0),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Column(
                                      children: const [
                                        Icon(
                                          Icons.radio_button_on,
                                          size: 24.0,
                                        ),
                                        SizedBox(
                                          height: 32.0,
                                          child: VerticalDivider(
                                            color: ApplicationColors
                                                .primaryColorLight,
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
                                    Flexible(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'Pickup Location',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyles.h3,
                                                ),
                                                Text(
                                                  'Durgapur, West Bengal',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 16.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  'Drop Location',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                  style: TextStyles.h3,
                                                ),
                                                Text(
                                                  'Pathsala, Assam',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ],
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              const Icon(
                                Icons.local_shipping_outlined,
                                size: 84.0,
                                color: ApplicationColors.borderGrey,
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'Order ID\nPickup Date\nPreferred Vehicle\nQuantity of Load\nMaterial Type',
                                style:
                                    TextStyles.greyText.copyWith(height: 2.0),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'SHYP789XX83\n2nd Feb 2023\nOpen Half Body Truck\n25.0 Tonne\nTMT',
                                textAlign: TextAlign.right,
                                style: TextStyle(height: 2.0),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        bottom: 24.0, left: 16.0, right: 16.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12.0),
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
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Load Status',
                            style: TextStyles.h2,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: Row(
                            children: const [
                              Icon(Icons.check_circle),
                              Expanded(
                                  child: Divider(
                                      thickness: 2.0,
                                      color: ApplicationColors.primaryColor)),
                              Icon(Icons.radio_button_checked),
                              Expanded(child: Divider(thickness: 2.0)),
                              Icon(Icons.radio_button_off,
                                  color: ApplicationColors.grey),
                              Expanded(child: Divider(thickness: 2.0)),
                              Icon(Icons.radio_button_off,
                                  color: ApplicationColors.grey),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Expanded(
                              child: Text(
                                'Pending',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: FontSize.S,
                                    color: ApplicationColors.primaryColor),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Quoted',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: FontSize.S,
                                    color: ApplicationColors.primaryColor),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Scheduled',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: FontSize.S,
                                    color: ApplicationColors.primaryColor),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'In Progress',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: FontSize.S,
                                    color: ApplicationColors.primaryColor),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        bottom: 24.0, left: 16.0, right: 16.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 12.0),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Per Tonne Freight Price',
                          style: TextStyles.h2,
                        ),
                        Text(
                          '₹ 3000.0',
                          style: TextStyles.h1
                              .copyWith(color: ApplicationColors.primaryColor),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: const [
                        CustomButton(
                          label: 'Confirm Load Booking',
                          radius: 16.0,
                        ),
                        SizedBox(height: 8.0),
                        CustomButton(
                          label: 'Cancel',
                          color: Colors.white,
                          radius: 16.0,
                          textColor: ApplicationColors.primaryColor,
                          borderColor: ApplicationColors.primaryColorLight,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
