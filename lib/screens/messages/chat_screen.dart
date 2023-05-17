import 'package:dom_sys/shared/app_colors.dart';
import 'package:dom_sys/widgets/custom_text14.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  final String avatar;
  final String fullName;
 
  const ChatScreen({super.key, required this.avatar, required this.fullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.fontMainColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 45.0.h,
            width: 45.0.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            child: Image.asset(
              "assets/Video.png",
              fit: BoxFit.contain,
              height: 24.0,
              width: 24.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
           height: 45.0.h,
            width: 45.0.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
            ),
            child: Image.asset(
              "assets/More Circle.png",
              fit: BoxFit.contain,
              height: 24.0,
              width: 24.0,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: -10,
        title: Row(
          children: [
            const CircleAvatar(
                //  backgroundImage: AssetImage(avatar),
                ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Emily jonson",
                  style: TextStyle(fontSize: 16.sp, color: AppColors.mainColor),
                ),
                const CustomText14(text: "Contact")
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return buildMessageBubble(
                  isMe: index % 2 == 0,
                  message: 'This is message $index',
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey[300]!,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 45.0,
                  width: 45.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                  ),
                  child: Image.asset(
                    "assets/Document.png",
                    fit: BoxFit.contain,
                    height: 24.0,
                    width: 24.0,
                  ),
                ),
                Expanded(
                  child:TextField(
                     decoration: InputDecoration(
                       hintText: 'Write something here',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),  // 
                         borderSide: const BorderSide(color: Color(0xFFC5D0E6)),
                       ),
                       filled: true,
                       fillColor: Colors.white,
                     ),
                   ),
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    "assets/Send.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMessageBubble({required bool isMe, required String message}) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: isMe ? AppColors.mainColor : const Color(0xFFEFF3FA),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          message,
          style: TextStyle(
            fontSize: 16,
            color: isMe ? Colors.white : AppColors.fontMainColor,
          ),
        ),
      ),
    );
  }
}
