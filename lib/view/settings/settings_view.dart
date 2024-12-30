import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:spending_management_app/common/colors.dart';
import 'package:spending_management_app/screens/profile/profile_screen.dart';

import '../../widget/icon_item_row.dart';
import '../edit_profile/edit_profile_view.dart';
import '../login/sign_in_view.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.generalStatColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset("assets/img/back.png",
                            width: 25, height: 25, color: TColor.gray30))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(color: TColor.gray30, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/u1.png",
                  width: 70,
                  height: 70,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Code For Any",
                  style: TextStyle(
                      color: TColor.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "thuanan524@gmail.com",
                  style: TextStyle(
                      color: TColor.gray30,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: TColor.border.withOpacity(0.15),
                  ),
                  color: TColor.gray60.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Edit profile",
                  style: TextStyle(
                      color: TColor.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 8),
                    child: Text(
                      "General",
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TColor.border.withOpacity(0.1),
                      ),
                      color: TColor.gray60.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        IconItemRow(
                          title: "Security",
                          icon: "assets/img/face_id.png",
                          value: "FaceID",
                        ),
                        IconItemSwitchRow(
                          title: "iCloud Sync",
                          icon: "assets/img/icloud.png",
                          value: isActive,
                          didChange: (newVal) {
                            setState(() {
                              isActive = newVal;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 8),
                    child: Text(
                      "My subscription",
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TColor.border.withOpacity(0.1),
                      ),
                      color: TColor.gray60.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        IconItemRow(
                          title: "Sorting",
                          icon: "assets/img/sorting.png",
                          value: "Date",
                        ),

                        IconItemRow(
                          title: "Summary",
                          icon: "assets/img/chart.png",
                          value: "Average",
                        ),

                        IconItemRow(
                          title: "Default currency",
                          icon: "assets/img/money.png",
                          value: "VNĐ ",
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 8),
                    child: Text(
                      "Appearance",
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TColor.border.withOpacity(0.1),
                      ),
                      color: TColor.gray60.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        IconItemRow(
                          title: "App icon",
                          icon: "assets/img/app_icon.png",
                          value: "Default",
                        ),
                        IconItemRow(
                          title: "Theme",
                          icon: "assets/img/light_theme.png",
                          value: "Dark",
                        ),
                        IconItemRow(
                          title: "Font",
                          icon: "assets/img/font.png",
                          value: "Inter",
                        ),
                      ],
                    ),
                  ),
                  // Thêm các mục "Ngôn ngữ", "Chế độ tối", "Quyền riêng tư" vào danh sách cài đặt
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 8),
                    child: Text(
                      "Cài đặt bổ sung",
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TColor.border.withOpacity(0.1),
                      ),
                      color: TColor.gray60.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(CupertinoIcons.globe, color: Colors.white),
                          title: const Text(
                            'Ngôn ngữ',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: const Text(
                            'Tiếng Việt',
                            style: TextStyle(color: TColor.gray30),
                          ),
                          trailing: const Icon(CupertinoIcons.chevron_forward, color: Colors.white),
                          onTap: () {
                            // Xử lý logic thay đổi ngôn ngữ
                            debugPrint("Ngôn ngữ được chọn");
                          },
                        ),
                        const Divider(color: TColor.gray30),
                        ListTile(
                          leading: const Icon(CupertinoIcons.moon_stars, color: Colors.white),
                          title: const Text(
                            'Chế độ tối',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: const Text(
                            'Bật',
                            style: TextStyle(color: TColor.gray30),
                          ),
                          trailing: const Icon(CupertinoIcons.chevron_forward, color: Colors.white),
                          onTap: () {
                            // Xử lý logic chuyển chế độ tối
                            debugPrint("Chế độ tối được bật");
                          },
                        ),
                        const Divider(color: TColor.gray30),
                        ListTile(
                          leading: const Icon(CupertinoIcons.lock_shield, color: Colors.white),
                          title: const Text(
                            'Quyền riêng tư',
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: const Icon(CupertinoIcons.chevron_forward, color: Colors.white),
                          onTap: () {
                            // Xử lý logic quyền riêng tư
                            debugPrint("Quyền riêng tư được chọn");
                          },
                        ),
                      ],
                    ),
                  ),

                  // Thêm nút Đăng xuất với giao diện như danh sách
                  // Nút "Logout"
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: double.infinity, // Để nút full màn hình
                      padding: const EdgeInsets.symmetric(vertical: 12), // Tăng khoảng cách để phù hợp
                      decoration: BoxDecoration(
                        color: TColor.gray60.withOpacity(0.2),
                        border: Border.all(
                          color: TColor.border.withOpacity(0.1),
                        ),
                        borderRadius: BorderRadius.circular(50), // Bo tròn toàn bộ
                      ),
                      child: InkWell(
                        onTap: () {
                          // Điều hướng quay lại SignInView()
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => SignInView()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Logout",
                              style: TextStyle(
                                color: TColor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
