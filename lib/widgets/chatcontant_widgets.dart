import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatcontantWidgetsSender extends StatelessWidget {
  const ChatcontantWidgetsSender({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.end, // Align items to the right for sender
      children: [
        // Message Bubble
        Container(
          margin: EdgeInsets.only(right: 10.w),
          padding: EdgeInsets.symmetric(
              horizontal: 12.w, vertical: 8.h), // Add padding for text
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.orange, // Replace Forangcolor with a defined color
          ),
          child: Text(
            'Hello there!', // Example message
            style: TextStyle(
              fontSize: 20.sp, // Use responsive font size
              color: Colors.white,
            ),
          ),
        ),

        // Avatar/Icon
        Container(
          margin: EdgeInsets.only(left: 10.w),
          height: 60.h,
          width: 60.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // Example color for avatar
          ),
        ),
      ],
    );
  }
}

class ChatcontantWidgetsReciver extends StatelessWidget {
  const ChatcontantWidgetsReciver({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10.w),
          height: 60.h,
          width: 60.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // Example color for avatar
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.w),
          padding: EdgeInsets.symmetric(
              horizontal: 12.w, vertical: 8.h), // Add padding for text
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.orange, // Replace Forangcolor with a defined color
          ),
          child: Text(
            'Hey hi', // Example message
            style: TextStyle(
              fontSize: 20.sp, // Use responsive font size
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
