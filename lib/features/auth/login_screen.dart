import 'package:flutter/material.dart';
import 'package:minimal_sport_shop_app/features/homescreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),

          child: Column(
            children: [
              const SizedBox(height: 70),

              const LoginHeaderWidget(),

              const SizedBox(height: 50),

              const LoginFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////
/// Custom Widget 1
////////////////////////////////////////////////////////

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),

            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(.3),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),

          child: const Icon(
            Icons.monitor_heart_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),

        const SizedBox(height: 25),

        const Text(
          "Sport Shop",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 10),

        const Text(
          "Welcome back! Please login.",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////////////
/// Custom Widget 2
////////////////////////////////////////////////////////

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Email
        TextField(
          decoration: InputDecoration(
            hintText: "student@flutter.dev",

            prefixIcon: const Icon(Icons.email_outlined),

            filled: true,
            fillColor: const Color(0xffF6F6F6),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),

        const SizedBox(height: 20),

        /// Password
        TextField(
          obscureText: true,

          decoration: InputDecoration(
            hintText: "••••••••••",

            prefixIcon: const Icon(Icons.lock_outline),

            filled: true,
            fillColor: const Color(0xffF6F6F6),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),

        const SizedBox(height: 12),

        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),

        const SizedBox(height: 20),

        /// Login Button
        SizedBox(
          width: double.infinity,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),

        /// Create Account Button
        SizedBox(
          width: double.infinity,
          height: 55,
          child: OutlinedButton(
            onPressed: () {},

            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.blue),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            child: const Text(
              "Create Account",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
