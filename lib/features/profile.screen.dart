import 'package:flutter/material.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileCardWidget(
                onEdit: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text("Edit Profile")));
                },
              ),

              const SizedBox(height: 20),

              const ProfileMenuWidget(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 2),
    );
  }
}

////////////////////////////////////////////////////////
/// Profile Card Widget
////////////////////////////////////////////////////////

class ProfileCardWidget extends StatelessWidget {
  final VoidCallback onEdit;

  const ProfileCardWidget({super.key, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 45,
            backgroundColor: Color(0xffE8F1FF),
            child: Icon(Icons.person, size: 50, color: Colors.blue),
          ),

          const SizedBox(height: 15),

          const Text(
            "mariam sadek",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 5),

          const Text(
            "mariam.sadek@example.com",
            style: TextStyle(color: Colors.grey),
          ),

          const SizedBox(height: 20),

          OutlinedButton(
            onPressed: onEdit,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              side: const BorderSide(color: Colors.blue, width: 2),
            ),
            child: const Text(
              "Edit Profile",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _InfoCard(number: "12", title: "Orders"),
              _InfoCard(number: "24", title: "Wishlist"),
              _InfoCard(number: "8", title: "Reviews"),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String number;
  final String title;

  const _InfoCard({required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 90,
      decoration: BoxDecoration(
        color: const Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 5),

          Text(title, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////
/// Profile Menu Widget
////////////////////////////////////////////////////////

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          _menuTile(Icons.shopping_bag_outlined, "My Orders"),
          _menuTile(Icons.favorite_border, "Favorites"),
          _menuTile(Icons.payment_outlined, "Payment Methods"),
          _menuTile(Icons.help_outline, "Help Center"),
          _menuTile(Icons.logout, "Logout"),
        ],
      ),
    );
  }

  Widget _menuTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () {},
    );
  }
}
