import 'package:flutter/material.dart';
import '../components/forward_button.dart';
import '../components/settings_item.dart';
import '../components/dark_mode_switch.dart';
import 'about_us_page.dart';
import 'cart_page.dart';
import 'edit_account.dart';
import 'feedback_page.dart';
import 'login_page.dart';
import 'privacy_policy_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.yellow[50],



        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Settings",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    // color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/images/user.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ranuki Perera",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              // color: isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                          Text(
                            "+94 775 696 259",
                            style: TextStyle(
                              // color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ForwardButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const EditAccountPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Settings",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    // color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                SettingSItem(
                  title: "Language",
                  titleColor: isDarkMode ? Colors.white : Colors.black,
                  bgColor: Colors.orange.shade100,
                  iconColor: Colors.orange,
                  icon: Icons.language,
                  value: "English",
                  onTap: () {  },
                  isDarkMode: isDarkMode,
                ),

                const SizedBox(height: 20),
                SettingSItem(
                  title: "Notifications",
                  titleColor: isDarkMode ? Colors.white : Colors.black,
                  bgColor: Colors.blue.shade100,
                  iconColor: Colors.blue,
                  icon: Icons.notifications,
                  onTap: () {},
                  isDarkMode: isDarkMode, // Replace null with the actual boolean value
                ),


                const SizedBox(height: 20),
                DarkModeSwitch(
                  title: "Dark Mode",
                  titleColor: isDarkMode ? Colors.white : Colors.black,
                  bgColor: isDarkMode ? Colors.grey[700]! : Colors.yellow.shade600,
                  iconColor: isDarkMode ? Colors.white : Colors.black,
                  icon: Icons.lightbulb_outline,
                  value: isDarkMode,
                  onTap: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                SettingSItem(
                  title: "Help",
                  titleColor: isDarkMode ? Colors.white : Colors.black,
                  bgColor: Colors.red.shade100,
                  iconColor: Colors.red,
                  icon: Icons.help,
                  onTap: () {},
                  isDarkMode: isDarkMode, // Pass the actual value of isDarkMode here
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
