import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/fonts.dart';
import 'package:shyp/constants/textstyles.dart';

class LoadStatusCard extends StatelessWidget {
  const LoadStatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        thickness: 2.0, color: ApplicationColors.primaryColor)),
                Icon(Icons.radio_button_checked),
                Expanded(child: Divider(thickness: 2.0)),
                Icon(Icons.radio_button_off, color: ApplicationColors.grey),
                Expanded(child: Divider(thickness: 2.0)),
                Icon(Icons.radio_button_off, color: ApplicationColors.grey),
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
    );
  }
}
