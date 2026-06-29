import 'package:flutter/material.dart';
import 'package:minimal_sport_shop_app/widgets/custom_bottom_nav_bar.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  final List<Map<String, String>> products = [
    {
      "image": "assets/images/nike1.jpeg",
      "title": "Pro Soccer Ball",
      "desc": "FIFA approved match ball",
      "price": "\$29.99",
    },
    {
      "image": "assets/images/nike2.jpeg",
      "title": "Runner X1",
      "desc": "Lightweight running shoes",
      "price": "\$89.99",
    },
    {
      "image": "assets/images/nike3.jpeg",
      "title": "Classic Jersey",
      "desc": "Breathable fabric",
      "price": "\$45.00",
    },
    {
      "image": "assets/images/nike4.jpeg",
      "title": "Gym Duffle Bag",
      "desc": "Water-resistant with shoe compartment",
      "price": "\$35.50",
    },
    {
      "image": "assets/images/nike5.jpeg",
      "title": "Pro Tennis Racket",
      "desc": "Carbon fiber frame",
      "price": "\$120.00",
    },
    {
      "image": "assets/images/nike6.jpeg",
      "title": "Yoga Mat",
      "desc": "Non-slip eco friendly",
      "price": "\$22.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "All Products",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.tune, color: Colors.black),
              ),
            ),
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            image: products[index]["image"]!,
            title: products[index]["title"]!,
            description: products[index]["desc"]!,
            price: products[index]["price"]!,
          );
        },
      ),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 1),
    );
  }
}

///
///
///
/// Custom Widget
///
class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.15),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(description, style: const TextStyle(color: Colors.grey)),

                const SizedBox(height: 12),

                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
