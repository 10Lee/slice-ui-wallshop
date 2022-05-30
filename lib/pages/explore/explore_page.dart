import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:slicing_homepage/models/store_model.dart';
import 'package:slicing_homepage/widgets/at_explore/custom_dropdown.dart';
import 'package:slicing_homepage/widgets/at_explore/shop_three_products.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.025),
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black12,
            hintText: "Cari barang atau toko",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15.0),
            ),
            contentPadding: const EdgeInsets.all(0),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20.0),
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          const SizedBox(width: 30.0),
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(right: 20.0),
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          tabs: const [
            Tab(
              text: "Toko",
            ),
            Tab(text: "Barang"),
            Tab(text: "Mall"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  CustomDropDown(title: 'Kategori'),
                  const SizedBox(width: 10.0),
                  CustomDropDown(title: 'Lokasi'),
                  const SizedBox(width: 10.0),
                  Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          padding: const EdgeInsets.only(bottom: 0),
                          onPressed: () {},
                          icon: Icon(Icons.tune),
                        ),
                        Text(
                          "Urutkan",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              // list of store
              ShopThreeProducts(storeModel: listOfStore[0]),
              ShopThreeProducts(storeModel: listOfStore[1]),
              ShopThreeProducts(storeModel: listOfStore[2]),
            ],
          ),
        ),
      ),
    );
  }
}
