import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/food_constains.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/home_view/database/home_base.dart';
import 'package:food/widgets/cardpopular_widgets.dart';
import 'package:food/widgets/rectanglechip_widget.dart';
import 'package:food/widgets/showdialog_widget.dart';
import 'package:get/get.dart';

class RestarunatsDetail extends StatelessWidget {
  final int index;

  const RestarunatsDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var restarunt = Get.find<HomeBase>(tag: "homebase").restraunt;
    return Scaffold(
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 24.w, right: 24.w, top: 50.h, bottom: 44.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.gouthrough();
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                color: FlighBcolor, shape: BoxShape.circle),
                            height: 45.h,
                            width: 45.w,
                            child: const Center(
                              child: Icon(CupertinoIcons.back),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.w),
                          child: Text(
                            "Restaurant View",
                            style: TextStyle(
                                color: Fblackcolor,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        ShowDailogWidget.filterdialog(context);
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: FlighBcolor, shape: BoxShape.circle),
                        height: 45.h,
                        width: 45.w,
                        child: const Center(
                          child: Icon(Icons.more_horiz_rounded),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Fbluecolor),
                  height: 184.w,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image(
                      image: NetworkImage(
                        restarunt[index]["coverimage"],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 24.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    restarunt[index]['name'],
                    style: TextStyle(fontSize: 20.sp).extrabold(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 7.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    maxLines: 4,
                    restarunt[index]['bio'],
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 17.sp,
                      color: Fblackcolor001,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 24.w),
                child: Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.star,
                          color: Forangcolor,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text(
                            restarunt[index]['rating'].toString(),
                            style: TextStyle(fontSize: 14.sp).extrabold(),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 30.w),
                    Row(
                      children: [
                        const Icon(
                          Icons.delivery_dining_outlined,
                          color: Forangcolor,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text(
                            "Free",
                            style: TextStyle(fontSize: 14.sp).extrabold(),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 30.w),
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.time,
                          color: Forangcolor,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text(
                            "20 min",
                            style: TextStyle(fontSize: 14.sp).extrabold(),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, bottom: 20.h, top: 32.h),
                child: SizedBox(
                  height: 45.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: foodList.length,
                    itemBuilder: (context, index) {
                      return RectanglechipWidget2(
                        title: foodList[index],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 24.h, bottom: 15.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Bruger(${restarunt.length})",
                    style: TextStyle(fontSize: 20.sp).extrabold(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: GridView.count(
                  childAspectRatio: 0.8 / 0.98,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(
                    restarunt.length,
                    (inde) {
                      var menu = restarunt[index]['menu'];
                      return FittedBox(
                        child: CardpopularWidgetsapi(
                          url: menu[inde]['image'],
                          name: menu[inde]['name'],
                          chategory: menu[inde]['subcategry'] ?? "fantistic",
                          price: menu[inde]['price'].toString(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
