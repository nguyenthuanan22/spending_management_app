import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spending_management_app/common/colors.dart';
import 'package:spending_management_app/view/settings/settings_view.dart';
import 'package:spending_management_app/view/login/sign_in_view.dart'; // Import màn hình đăng nhập

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: TColor.generalStatColor,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.settings, color: Colors.white),
            onPressed: () {
              // Mở màn hình SettingsView
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsView()),
              );
            },
          ),
        ],
      ),
      backgroundColor: TColor.generalStatColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            // Avatar và thông tin cơ bản
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.yellow[700],
                  child: Icon(
                    CupertinoIcons.person_fill,
                    size: 50,
                    color: Colors.yellow[500],
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Thuan An',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'thuanan524@gmail.com',
                      style: TextStyle(fontSize: 14, color: TColor.gray30),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Thông tin cá nhân
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: TColor.border.withOpacity(0.1)),
                color: TColor.gray60.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  _buildListTile(
                    context,
                    title: 'Tên người dùng',
                    subtitle: 'Thuan An',
                    icon: CupertinoIcons.person,
                  ),
                  const Divider(color: TColor.gray30),
                  _buildListTile(
                    context,
                    title: 'Email',
                    subtitle: 'thuanan524@gmail.com',
                    icon: CupertinoIcons.mail,
                  ),
                  const Divider(color: TColor.gray30),
                  _buildListTile(
                    context,
                    title: 'Số điện thoại',
                    subtitle: '+84 123 456 789',
                    icon: CupertinoIcons.phone,
                  ),
                  const Divider(color: TColor.gray30),
                  _buildListTile(
                    context,
                    title: 'Ngày sinh',
                    subtitle: '01/01/1990',
                    icon: CupertinoIcons.calendar,
                  ),
                  const Divider(color: TColor.gray30),
                  _buildListTile(
                    context,
                    title: 'Giới tính',
                    subtitle: 'Nam',
                    icon: CupertinoIcons.person_2_fill,
                  ),
                  const Divider(color: TColor.gray30),
                  _buildListTile(
                    context,
                    title: 'Đổi mật khẩu',
                    icon: CupertinoIcons.lock,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Nút Logout
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Xử lý logic đăng xuất
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Hàm tạo ListTile
  ListTile _buildListTile(BuildContext context,
      {required String title, String? subtitle, required IconData icon}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: subtitle != null
          ? Text(
        subtitle,
        style: const TextStyle(color: TColor.gray30),
      )
          : null,
      trailing: IconButton(
        icon: const Icon(CupertinoIcons.chevron_forward, color: Colors.white),
        onPressed: () {
          // Thêm logic mở màn hình chi tiết
        },
      ),
    );
  }
}
