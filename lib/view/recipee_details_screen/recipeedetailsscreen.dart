import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';

class Recipeedetailsscreen extends StatelessWidget {
  String recipeetitle;
  String imageurl;
  String profile;
  String username;

  Recipeedetailsscreen(
      {super.key,
      required this.recipeetitle,
      required this.imageurl,
      required this.profile,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: ColorConstants.mainWhite,
      body: Column(
        children: [
          vedio_container_and_profile_section(),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  children: [
                    Text(
                      "Ingredients",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.mainBlack),
                    ),
                    Spacer(),
                    Text(
                      "5 items",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              // ListView.builder(itemBuilder: (context, index) => ,)
            ],
          )
        ],
      ),
    );
  }

  Column vedio_container_and_profile_section() {
    return Column(
      children: [
        title_section(),
        SizedBox(
          height: 12,
        ),
        vediocard_section(),
        SizedBox(
          height: 16,
        ),
        rating_section(),
        profile_tile_section()
      ],
    );
  }

  Padding profile_tile_section() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: ListTile(
        title: Text(
          username,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        leading: CircleAvatar(
          radius: 21,
          backgroundImage: NetworkImage(profile),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.location_on,
              color: ColorConstants.primaryColor,
            ),
            Text(
              "Bali, Indonesia",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: ColorConstants.Greyshade2),
            ),
          ],
        ),
        trailing: Container(
          height: 36,
          width: 77,
          decoration: BoxDecoration(
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                "Follow",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding rating_section() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        Row(
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: ColorConstants.lightyellow,
                ),
                Text(
                  "4.5",
                  style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                )
              ],
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "(300 Reviews)",
              style: TextStyle(
                  color: ColorConstants.Greyshade2,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            )
          ],
        )
      ]),
    );
  }

  Container vediocard_section() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(8),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageurl),
        ),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
              child: Icon(
                Icons.play_arrow,
                color: ColorConstants.mainWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding title_section() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        "How to Make $recipeetitle",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
    );
  }
}
