import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/view/notification_screen/widgets/notificationcard.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Notification",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          actions: [
            Icon(
              Icons.tune,
              size: 24,
            ),
            SizedBox(
              width: 20,
            ),
          ],
          bottom: TabBar(
              padding: EdgeInsets.symmetric(horizontal: 20),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(color: ColorConstants.mainWhite),
              unselectedLabelColor: ColorConstants.primaryColor,
              dividerHeight: 0,
              indicator: BoxDecoration(
                  color: ColorConstants.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              tabs: [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Unread",
                ),
                Tab(
                  text: "Read",
                ),
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Column(
                    children: [
                      Notificationcard(
                        title: "New recipe!",
                        content:
                            "Far far away, behind the word\nmountains, far from the countries.",
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Notificationcard(
                          content:
                              "Far far away, behind the word\nmountains, far from the countries.",
                          title: "Don’t forget to try your saved recipe")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Yesterday",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Column(
                    children: [
                      Notificationcard(
                          title: "New recipe!",
                          content:
                              "Far far away, behind the word\nmountains, far from the countries."),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
