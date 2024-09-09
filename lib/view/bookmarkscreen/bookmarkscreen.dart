import 'package:flutter/material.dart';
import 'package:foodapp/Dummy_db.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/view/global_widgets/custom_video_card.dart';
import 'package:foodapp/view/recipee_details_screen/recipeedetailsscreen.dart';

class Bookmarkscreen extends StatelessWidget {
  const Bookmarkscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Saved recipes",
            style: TextStyle(
                color: ColorConstants.mainBlack, fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 20),
            indicatorSize: TabBarIndicatorSize.tab,
            dividerHeight: 0,
            // isScrollable: true,
            // tabAlignment: TabAlignment.start,
            indicator: BoxDecoration(
                color: ColorConstants.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            labelColor: ColorConstants.mainWhite,
            unselectedLabelColor: ColorConstants.primaryColor,
            tabs: [
              Tab(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text("Salad"),
              )),
              Tab(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text("Breakfast"),
              )),
            ],
          ),
        ),
        body: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            itemBuilder: (context, index) => CustomVideoCard(
                  oncardTapped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Recipeedetailsscreen(
                            profile: DummyDb.trendingnowlist[index]
                                ["profileimageurl"],
                            username: DummyDb.trendingnowlist[index]
                                ["username"],
                            imageurl: DummyDb.trendingnowlist[index]
                                ["imageurl"],
                            recipeetitle: DummyDb.trendingnowlist[index]
                                ["title"],
                          ),
                        ));
                  },
                  width: double.infinity,
                  duration: DummyDb.trendingnowlist[index]["duration"],
                  imageurl: DummyDb.trendingnowlist[index]["imageurl"],
                  profile: DummyDb.trendingnowlist[index]["profileimageurl"],
                  rating: DummyDb.trendingnowlist[index]["rating"],
                  title: DummyDb.trendingnowlist[index]["title"],
                  username: DummyDb.trendingnowlist[index]["username"],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  width: 16,
                ),
            itemCount: DummyDb.trendingnowlist.length),
      ),
    );
  }
}
