import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/fonts.dart';
import 'package:shyp/constants/textstyles.dart';
import 'package:shyp/widgets/custom_button.dart';
import 'package:shyp/widgets/order_card.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  late final PageController _pageController;
  int selectedTab = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: selectedTab);
    super.initState();
  }

  void changeTab(int value) {
    setState(() {
      selectedTab = value;
      _pageController.jumpToPage(
        selectedTab,
      );
    });
  }

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
              Text(
                selectedTab == 0
                    ? 'Home'
                    : (selectedTab == 1 ? 'My Loads' : 'Profile'),
                style: TextStyles.h1,
              ),
              Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF000000).withOpacity(0.1),
                          spreadRadius: 0.0,
                          blurRadius: 5.0,
                          offset: const Offset(0, 2.5))
                    ],
                  ),
                  child: const Icon(
                    Icons.notifications_outlined,
                    size: 28.0,
                    color: ApplicationColors.primaryColor,
                  ))
            ],
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: [
              const Center(child: Text('Home')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: CustomButton(
                            radius: 14.0,
                            padding: 12.0,
                            label: 'Ongoing',
                            color: ApplicationColors.primaryColorLight,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: CustomButton(
                            radius: 14.0,
                            padding: 12.0,
                            label: 'Past',
                            color: Colors.transparent,
                            borderColor: ApplicationColors.primaryColorLight,
                            textColor: ApplicationColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 16.0),
                    child: Row(
                      children: [
                        CustomButton(
                          radius: 18.0,
                          padding: 8.0,
                          label: 'All (8)',
                          textSize: FontSize.S,
                          color: ApplicationColors.primaryColorLight
                              .withOpacity(0.1),
                          borderColor: ApplicationColors.primaryColorLight,
                          textColor: ApplicationColors.primaryColor,
                        ),
                        const SizedBox(width: 8.0),
                        CustomButton(
                          radius: 18.0,
                          padding: 8.0,
                          label: 'Pending (8)',
                          textSize: FontSize.S,
                          color: Colors.transparent,
                          borderColor: ApplicationColors.borderGrey,
                          textColor: ApplicationColors.black.withOpacity(0.7),
                        ),
                        const SizedBox(width: 8.0),
                        CustomButton(
                          radius: 18.0,
                          padding: 8.0,
                          label: 'In Progress (8)',
                          textSize: FontSize.S,
                          color: Colors.transparent,
                          borderColor: ApplicationColors.borderGrey,
                          textColor: ApplicationColors.black.withOpacity(0.7),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(bottom: 108.0),
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return const OrderCard();
                        }),
                  )
                ],
              ),
              const Center(child: Text('Profile')),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
          margin: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
          padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22.0),
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
              GestureDetector(
                onTap: () {
                  changeTab(0);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: selectedTab == 0
                          ? ApplicationColors.primaryColor.withOpacity(0.1)
                          : Colors.transparent),
                  child: Icon(
                    Icons.home_filled,
                    color: selectedTab == 0
                        ? ApplicationColors.primaryColor
                        : ApplicationColors.black,
                    size: 28.0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  changeTab(1);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: selectedTab == 1
                          ? ApplicationColors.primaryColor.withOpacity(0.1)
                          : Colors.transparent),
                  child: Icon(
                    Icons.local_shipping,
                    color: selectedTab == 1
                        ? ApplicationColors.primaryColor
                        : ApplicationColors.black,
                    size: 28.0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  changeTab(2);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: selectedTab == 2
                          ? ApplicationColors.primaryColor.withOpacity(0.1)
                          : Colors.transparent),
                  child: Icon(
                    Icons.person,
                    color: selectedTab == 2
                        ? ApplicationColors.primaryColor
                        : ApplicationColors.black,
                    size: 28.0,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
