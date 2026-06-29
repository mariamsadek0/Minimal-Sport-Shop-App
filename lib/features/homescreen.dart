import 'package:flutter/material.dart';
import 'package:minimal_sport_shop_app/models/products.dart';
import 'package:minimal_sport_shop_app/widgets/category_botton.dart';
import 'package:minimal_sport_shop_app/widgets/custom_bottom_nav_bar.dart';
import 'package:minimal_sport_shop_app/widgets/product_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discover",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 20),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Search products...",
                    prefixIcon: Icon(Icons.search),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryBotton(
                        text: "Shoes",
                        isSelected: true,
                        onTap: () {},
                      ),

                      SizedBox(width: 10),

                      CategoryBotton(
                        text: "Jerseys",
                        isSelected: false,
                        onTap: () {},
                      ),

                      SizedBox(width: 10),

                      CategoryBotton(
                        text: "Balls",
                        isSelected: false,
                        onTap: () {},
                      ),

                      SizedBox(width: 10),

                      CategoryBotton(
                        text: "Accessories",
                        isSelected: false,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Items",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: .95,
                  ),

                  itemBuilder: (context, index) {
                    return ProductCard(
                      image: products[index].image,
                      title: products[index].title,
                      price: products[index].price,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 0),
    );
  }
}
