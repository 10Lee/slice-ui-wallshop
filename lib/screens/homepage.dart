import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slicing_homepage/widgets/features.dart';

import 'package:slicing_homepage/widgets/horizontal_list.dart';
import 'package:slicing_homepage/widgets/horizontal_list2.dart';
import 'package:slicing_homepage/widgets/horizontal_list3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Bae Suzy',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Text('Selamat datang di Wallshop'),
                        ],
                      ),
                    ),
                    Badge(
                      badgeContent: Text(
                        '0',
                        style: TextStyle(color: Colors.white),
                      ),
                      child: Icon(Icons.notifications),
                    ),
                    const SizedBox(width: 20.0),
                    CircleAvatar(
                      radius: 15.0,
                      backgroundImage:
                          AssetImage('assets/images/user_profile.png'),
                    )
                  ],
                ),
                HorizontalList(),

                // Row(
                //   children: [
                //     CircleAvatar(backgroundColor: Colors.black, radius: 5.0),
                //     const SizedBox(width: 4.0),
                //     CircleAvatar(backgroundColor: Colors.grey, radius: 5.0),
                //     const SizedBox(width: 4.0),
                //     CircleAvatar(backgroundColor: Colors.grey, radius: 5.0),
                //   ],
                // ),

                const SizedBox(height: 20.0),
                Container(
                  margin: const EdgeInsets.all(3.0),
                  padding: const EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/user_profile.png'),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text('Wallshop poin '),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.red.shade900,
                                )
                              ],
                            ),
                            Text(
                              '1200 poin',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black.withOpacity(.1),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/icon_crown.png'),
                            Text(
                              "Rank",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 10.0),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Item populer",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text("Lihat semua"),
                    ],
                  ),
                ),
                HorizontalList2(),
                const SizedBox(height: 20.0),
                // HorizontalList3(),
                Container(
                  width: double.infinity,
                  height: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Features(
                        title: 'Antar',
                        subTitle: 'Pesananmu di antar',
                        imageUrl: 'assets/images/slider3_1.png',
                      ),
                      const SizedBox(width: 10.0),
                      Features(
                        title: 'Ambil',
                        subTitle: 'Datang ambil ke toko',
                        imageUrl: 'assets/images/slider3_2.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
