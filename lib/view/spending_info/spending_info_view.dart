import 'package:flutter/material.dart';
import '../../common/colors.dart';
import '../../widget/item_row.dart';
import '../../widget/secondary_button.dart';


class SpendingInfoView extends StatefulWidget {
  final Map<String, dynamic> sObj;

  const SpendingInfoView({super.key, required this.sObj});

  @override
  State<SpendingInfoView> createState() => _SpendingInfoViewState();
}

class _SpendingInfoViewState extends State<SpendingInfoView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.generalStatColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xff282833).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Container(
                      height: media.width * 0.9,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: TColor.backgroundeneralColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back, color: Colors.white),
                              ),
                              const Text(
                                "Thông tin giao dịch",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete, color: Colors.white),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            width: media.width * 0.25,
                            height: media.width * 0.25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: widget.sObj["color"],
                            ),
                            child: Center(
                              child: widget.sObj["icon"],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            widget.sObj["name"] ?? "Không có tên",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            widget.sObj["totalAmount"] ?? "0 VNĐ",
                            style: const TextStyle(
                                color: TColor.gray30,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 20, horizontal: 20),
                    //   child: Column(
                    //     children: [
                    //       Container(
                    //         padding: const EdgeInsets.symmetric(vertical: 10),
                    //         decoration: BoxDecoration(
                    //           border: Border.all(
                    //             color: TColor.border.withOpacity(0.1),
                    //           ),
                    //           color: TColor.gray60.withOpacity(0.2),
                    //           borderRadius: BorderRadius.circular(16),
                    //         ),
                    //         child: Column(
                    //           children: [
                    //             ItemRow(
                    //               title: "Tên giao dịch",
                    //               value: widget.sObj["name"],
                    //             ),
                    //             ItemRow(
                    //               title: "Ngày",
                    //               value: widget.sObj["date"],
                    //             ),
                    //             ItemRow(
                    //               title: "Tổng số tiền",
                    //               value: widget.sObj["totalAmount"],
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       const SizedBox(height: 20),
                    //       SecondaryButton(title: "Lưu", onPressed: () {})
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
