import 'package:flutter/material.dart';
import 'package:slicing_homepage/models/store_model.dart';

class ShopThreeProducts extends StatelessWidget {
  final StoreModel storeModel;

  ShopThreeProducts({
    Key? key,
    required this.storeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(15.0),
      width: double.infinity,
      height: 250.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 2,
            color: Colors.black.withOpacity(.05),
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/icon_shop.png'),
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${storeModel.storeName}",
                        style: TextStyle(fontWeight: FontWeight.w600),
                        overflow: TextOverflow.ellipsis,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(text: "Manado - Sekitar "),
                            TextSpan(
                              text: "${storeModel.kiloMeter} Km",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 100.0,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green.shade700),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Lihat Toko",
                  style: TextStyle(color: Colors.green.shade700),
                )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width / 4,
                    height: 125.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("${storeModel.product[0].imageUrl}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '${storeModel.product[0].price}',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width / 4,
                    height: 125.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("${storeModel.product[1].imageUrl}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '${storeModel.product[1].price}',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width / 4,
                    height: 125.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("${storeModel.product[2].imageUrl}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '${storeModel.product[2].price}',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
