import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';

class CustomVideoCard extends StatelessWidget {
  String title;
  String rating;
  String duration;
  String profile;
  String username;
  String imageurl;

  CustomVideoCard(
      {super.key,
      required this.duration,
      required this.profile,
      required this.rating,
      required this.title,
      required this.username,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 180,
            width: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageurl))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorConstants.lightBlack.withOpacity(.3)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorConstants.mainWhite,
                          ),
                          Text(
                            rating,
                            style: TextStyle(
                                color: ColorConstants.mainWhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: ColorConstants.mainWhite,
                      child: Icon(Icons.bookmark_outline),
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
                  child: Icon(
                    Icons.play_arrow,
                    color: ColorConstants.mainWhite,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorConstants.lightBlack.withOpacity(.3)),
                      child: Text(
                        duration,
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(Icons.more_horiz)
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profile),
                radius: 16,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                username,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: ColorConstants.Greyshade2),
              )
            ],
          )
        ],
      ),
    );
  }
}
