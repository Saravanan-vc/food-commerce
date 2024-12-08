import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class Profilcontriner extends HookWidget {
  final List user;
  const Profilcontriner(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: FlighBcolor),
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: user.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 14.w),
                  child: CircleAvatar(
                    backgroundColor: Fwhitcolor,
                    radius: 20.r,
                    child: Icon(
                      user[index][0],
                      size: 25.sp,
                      color: user[index][3],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    user[index][1],
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Fblackcolor),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => user[index][2]));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.sp,
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Profilcontriner2 extends StatelessWidget {
  final List user;
  final List<String> title;
  const Profilcontriner2({super.key, required this.user, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: FlighBcolor),
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: user.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 14.w),
                  child: CircleAvatar(
                    backgroundColor: Fwhitcolor,
                    radius: 22.r,
                    child: Icon(
                      user[index][0],
                      size: 25.sp,
                      color: user[index][2],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title[index],
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: Fblackcolor001),
                      ),
                      Text(
                        user[index][1],
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Fblackcolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Addresecontainer extends StatelessWidget {
  final IconData icon;
  final Color iconcolor;
  final String title;
  final String addres;
  const Addresecontainer(
      {super.key,
      required this.icon,
      required this.iconcolor,
      required this.title,
      required this.addres});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: FlighBcolor),
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 14.w),
              child: CircleAvatar(
                backgroundColor: Fwhitcolor,
                radius: 22.r,
                child: Icon(
                  icon,
                  size: 25.sp,
                  color: iconcolor,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        maxLines: null,
                        title,
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w300,
                            color: Fblackcolor),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.edit_location_outlined,
                            color: Forangcolor,
                          ),
                          SizedBox(width: 10.w),
                          const Icon(
                            Icons.delete_outline,
                            color: Forangcolor,
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    addres,
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Fblackcolor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
