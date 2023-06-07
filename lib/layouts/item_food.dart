import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../myCustomUtils/colors.dart';
import 'layout_home.dart';

class ItemFood extends StatelessWidget {

  ItemFood(this.index);

  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            HomeLayout.imageList[index],
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 21,
                width: 21,
                decoration: BoxDecoration(
                  color: StreetFoodColors.blackColor
                      .withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.favorite,
                  color: StreetFoodColors.whiteColor,
                  size: 11,
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Stack(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chilli Biryani',
                        style: TextStyle(
                          color: StreetFoodColors.whiteColor,
                          fontFamily: 'PoppinsSemiBold',
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'by John Jones',
                        style: TextStyle(
                          color: StreetFoodColors.greyColor,
                          fontFamily: 'PoppinsRegular',
                          fontSize: 9,
                        ),
                      ),
                      Row(
                        children: [
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
                              color:
                              StreetFoodColors.yellowColor,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Spacer(),
                          Icon(
                            Icons.access_time,
                            color: StreetFoodColors.whiteColor,
                            size: 10,
                          ),
                          Text(
                            '30 min',
                            style: TextStyle(
                              color:
                              StreetFoodColors.whiteColor,
                              fontSize: 8,
                              fontFamily: 'PoppinsRegular',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
