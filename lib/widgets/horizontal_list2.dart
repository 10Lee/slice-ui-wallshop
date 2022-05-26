import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slicing_homepage/models/populer_model.dart';

import '../models/category_model.dart';

class HorizontalList2 extends StatelessWidget {
  HorizontalList2({Key? key}) : super(key: key);

  List<PopulerModel> popularList = [
    PopulerModel(
      imageUrl: 'assets/images/tshirt.png',
      title: 'Tshirt Chicago Bulls',
      price: 'Rp. 79.000',
      discPrice: 'Rp. 50.000',
    ),
    PopulerModel(
      imageUrl: 'assets/images/shoes.png',
      title: 'Nike Air Versetile II',
      price: 'Rp. 8.000.000',
      discPrice: 'Rp. 50.000',
    ),
    PopulerModel(
      imageUrl: 'assets/images/supreme.png',
      title: 'Supreme Cash Gun',
      price: 'Rp. 1.150.000',
      discPrice: 'Rp. 50.000',
    ),
    PopulerModel(
      imageUrl: 'assets/images/elon.png',
      title: 'Elon Mask Biography Book',
      price: 'Rp. 200.000',
      discPrice: 'Rp. 50.000',
    ),
  ];

  Widget _buildPopuler(BuildContext context, populer) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 10.0),
      width: 98.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: Colors.grey.shade200,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset(
                populer.imageUrl.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${populer.title}",
                  style: TextStyle(fontSize: 8.0),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5.0),
                Text(
                  "${populer.price}",
                  style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.red.shade900,
                      child: Text(
                        '29%',
                        style:
                            TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      '${populer.discPrice}',
                      style: TextStyle(fontSize: 9.0),
                    )
                  ],
                ),
              ],
            ),
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
            itemCount: popularList.length,
            itemBuilder: (context, index) {
              final populer = popularList[index];
              return _buildPopuler(context, populer);
            },
          ),
        ),
      ],
    );
  }
}
