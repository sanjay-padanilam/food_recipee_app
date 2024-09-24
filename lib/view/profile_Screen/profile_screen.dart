import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/view/profile_Screen/widgets/custom_profile_data_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: ColorConstants.mainBlack,
                fontSize: 24)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Column(
        children: [
          _build_Profileimage_Section(),
          Build_profile_data_Section(),
          Divider(),
          Build_tab_Section()
        ],
      ),
    );
  }

  Widget Build_tab_Section() => Column();

  Widget Build_profile_data_Section() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            custom_profile_data_card(title: "Recipee", count: "30"),
            custom_profile_data_card(title: "Vedios", count: "55"),
            custom_profile_data_card(title: "Followers", count: "140K"),
            custom_profile_data_card(title: "Following", count: "120")
          ],
        ),
      );

  Widget _build_Profileimage_Section() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/678783/pexels-photo-678783.jpeg?auto=compress&cs=tinysrgb&w=600"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.primaryColor)),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: ColorConstants.primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Text(
            "Alessandra Blair",
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 12),
          Text(
            textAlign: TextAlign.justify,
            "Hello world I’m Alessandra Blair, I’m from Italy 🇮🇹 I love cooking so much!",
            style: TextStyle(
                color: ColorConstants.Greyshade2,
                fontSize: 12,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
