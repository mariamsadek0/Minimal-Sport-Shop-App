class Product {
  final String image;
  final String title;
  final String description;
  final String price;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
}

List<Product> products = [
  Product(
    image: "assets/images/nike1.jpeg",
    title: "Runner X1",
    description: "Lightweight running shoes",
    price: "\$302.00",
  ),

  Product(
    image: "assets/images/nike2.jpeg",
    title: "Pro Soccer Ball",
    description: "FIFA approved match ball",
    price: "\$752.00",
  ),

  Product(
    image: "assets/images/nike3.jpeg",
    title: "Gym Duffle Bag",
    description: "Water-resistant with shoe compartment",
    price: "\$402.00",
  ),

  Product(
    image: "assets/images/nike4.jpeg",
    title: "Classic Jersey",
    description: "Breathable fabric",
    price: "\$252.00",
  ),
];
