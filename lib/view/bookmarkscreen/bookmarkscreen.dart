import 'package:flutter/material.dart';
import 'package:foodapp/Dummy_db.dart';
import 'package:foodapp/view/global_widgets/custom_video_card.dart';

class Bookmarkscreen extends StatelessWidget {
  const Bookmarkscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) => CustomVideoCard(
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
    );
  }
}
