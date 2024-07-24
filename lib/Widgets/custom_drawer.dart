import 'package:bdtask_assignmnet/Widgets/bottom_navigation_bar.dart';
import 'package:bdtask_assignmnet/utils/app_colors.dart';
import 'package:bdtask_assignmnet/views/contact_screen.dart';
import 'package:bdtask_assignmnet/views/setting_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.whiteColors,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              currentAccountPicture:  const CircleAvatar(
              backgroundImage: NetworkImage('https://c4.wallpaperflare.com/wallpaper/147/939/790/digital-art-anime-naruto-shippuuden-hatake-kakashi-wallpaper-preview.jpg')
              ),
              currentAccountPictureSize: const Size(70, 70),
              accountName: const Text("Kakashi Hatake"),
              accountEmail: const Text("hatakeKakashi@gmail.com")),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomNavBar(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Contact"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactScreen(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Setting"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
