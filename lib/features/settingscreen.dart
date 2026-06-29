import 'package:flutter/material.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;
  bool notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              const Text(
                "Settings",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              SettingsSectionWidget(
                title: "GENERAL",
                children: [
                  SettingTileWidget(
                    icon: Icons.dark_mode_outlined,
                    title: "Dark Mode",
                    trailing: Switch(
                      value: darkMode,
                      onChanged: (value) {
                        setState(() {
                          darkMode = value;
                        });
                      },
                    ),
                  ),

                  SettingTileWidget(
                    icon: Icons.notifications_none,
                    title: "Notifications",
                    trailing: Switch(
                      value: notifications,
                      onChanged: (value) {
                        setState(() {
                          notifications = value;
                        });
                      },
                    ),
                  ),

                  const SettingTileWidget(
                    icon: Icons.language,
                    title: "Language",
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              SettingsSectionWidget(
                title: "ACCOUNT",
                children: const [
                  SettingTileWidget(
                    icon: Icons.lock_outline,
                    title: "Change Password",
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),

                  SettingTileWidget(
                    icon: Icons.privacy_tip_outlined,
                    title: "Privacy Policy",
                    trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              SettingsSectionWidget(
                title: "ABOUT",
                children: const [
                  SettingTileWidget(
                    icon: Icons.info_outline,
                    title: "Version",
                    trailing: Text("1.0.0"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 3),
    );
  }
}

////////////////////////////////////////////////////////
/// أول Custom Widget
////////////////////////////////////////////////////////

class SettingsSectionWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SettingsSectionWidget({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(children: children),
          ),
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////
/// تاني Custom Widget
////////////////////////////////////////////////////////

class SettingTileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget trailing;
  final VoidCallback? onTap;

  const SettingTileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue.shade50,
              child: Icon(icon, color: Colors.blue, size: 22),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            trailing,
          ],
        ),
      ),
    );
  }
}
