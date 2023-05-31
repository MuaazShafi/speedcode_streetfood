import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'colors.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({
    super.key,
    required this.images,
    required this.imagesName,
    this.containerHeight,
  });

  final List<String> images;
  final List<String> imagesName;
  final double? containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Container(
          height: 180,
          width: 157,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                images[i],
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
                      color: Colors.black.withOpacity(0.3),
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
                        height: containerHeight ?? 70,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            imagesName[i],
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
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: StreetFoodColors.yellowColor,
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
                                  color: StreetFoodColors.whiteColor,
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
        ),
        separatorBuilder: (context, i) => SizedBox(
          width: 10,
        ),
        itemCount: images.length,
      ),
    );
  }
}
