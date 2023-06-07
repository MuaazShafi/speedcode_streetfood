import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../myCustomUtils/colors.dart';
import 'layout_home.dart';

class ItemFeatureRecipe extends StatelessWidget {
  int index;


  ItemFeatureRecipe(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Transform(
        transform: Matrix4.skewX(-0.15),
        child: Container(
          height: 153,
          width: 302,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(
                HomeLayout.imageList[
                index % HomeLayout.imageList.length],
              ),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding:
            const EdgeInsets.only(left: 18.0, bottom: 10),
            child: Stack(
              children: [
                Positioned(
                  top: 70,
                  child: Container(
                    height: 60,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        HomeLayout.itemName[
                        index % HomeLayout.itemName.length],
                        style: TextStyle(
                            color: StreetFoodColors.whiteColor,
                            fontSize: 15,
                            fontFamily: 'PoppinsSemiBold'),
                      ),
                      Text(
                        'by Jacob Jones',
                        style: TextStyle(
                            color: StreetFoodColors.greyColor,
                            fontFamily: 'PoppinsRegular',
                            fontSize: 10),
                      ),
                      RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 11,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(
                            horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: StreetFoodColors.yellowColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
