import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/textstyles.dart';
import 'package:shyp/widgets/order_card.dart';

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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [OrderCard()],
            ),
          ),
        ));
  }
}
