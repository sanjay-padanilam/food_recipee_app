import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';

class custom_ingrediants_card extends StatelessWidget {
  const custom_ingrediants_card({super.key, this.havearrow = false});
  final bool havearrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.Greyshade3),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.mainWhite),
            child: Icon(Icons.coffee),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "Eggs",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorConstants.mainBlack),
          ),
          Spacer(),
          Text(
            "200g",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: ColorConstants.Greyshade2),
          ),
          havearrow
              ? Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_forward),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
