import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/category_model.dart';

class HorizontalList3 extends StatelessWidget {
  HorizontalList3({Key? key}) : super(key: key);

  List<CategoryModel> categories = [
    CategoryModel(name: 'Technology', imageUrl: 'assets/images/slider3_1.png'),
    CategoryModel(name: 'Business', imageUrl: 'assets/images/slider3_2.png'),
  ];

  Widget _buildCategories(BuildContext context, category) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 10.0),
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: Colors.grey.shade200,
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 170.0,
            decoration: BoxDecoration(
              color: Colors.red.shade900,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  '${category.imageUrl}',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Antar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 70.0),
                    child: Text(
                      "Pesananmu di antar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ),

            // child: Stack(
            //   children: [
            //     Align(
            //       alignment: Alignment.bottomCenter,
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(15),
            //         child: Image.asset(
            //           category.imageUrl.toString(),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 170.0,
          // color: Colors.blue,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return _buildCategories(context, category);
            },
          ),
        ),
      ],
    );
  }
}
