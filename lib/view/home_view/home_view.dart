
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/food_constains.dart';
import 'package:food/util/sharedperference_mdel.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/ui/tutroial.dart';
import 'package:food/view/cart_editing_view.dart';
import 'package:food/view/home_view/database/home_base.dart';
import 'package:food/view/perfoilmenu_screen.dart';
import 'package:food/view/search_view.dart';
import 'package:food/widgets/restaurants_card.dart';
import 'package:food/widgets/search_widgets.dart';
import 'package:food/widgets/swithccolor_widgets.dart';
import 'package:food/widgets/timerdecrese_widgets.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Tutroial tutroial = Tutroial();

  TimerdecreseWidgets timerdecreseWidgets =
      Get.find<TimerdecreseWidgets>(tag: "timer");
  HomeBase homeBase = Get.find<HomeBase>(tag: "homebase");
  String? valued = "Home";
  @override
  void initState() {
    SharedperferenceMdel.setinitalpermisiion();
    timerdecreseWidgets.isbool.value = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 50.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.gothrough(const PerfoilmenuScreen());
                    },
                    child: Container(
                      key: tutroial.globalKey, //golbakey
                      decoration: const BoxDecoration(
                          color: FlighBcolor, shape: BoxShape.circle),
                      height: 45.h,
                      width: 45.w,
                      child: const Center(
                        child: Icon(CupertinoIcons.line_horizontal_3),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DELIVER TO",
                          style: TextStyle(
                              color: Forangcolor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        DropdownButton<String>(
                          dropdownColor: FlighBcolor,
                          underline: const SizedBox(),
                          focusColor: Fwhitcolor,
                          borderRadius: BorderRadius.circular(20.r),
                          value: valued,
                          items: location.map((food) {
                            return DropdownMenuItem<String>(
                              enabled: food != valued,
                              value: food,
                              child: Text(food),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              valued = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CartEditingView()));
                    },
                    child: Container(
                      key: tutroial.lobalKey,
                      decoration: const BoxDecoration(
                          color: Fblackcolor, shape: BoxShape.circle),
                      height: 45.h,
                      width: 45.w,
                      child: Center(
                        child: Icon(
                          CupertinoIcons.bag,
                          size: 20.sp,
                          color: Fwhitcolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 24.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    homeBase.name?.value ?? 'Hey Hi',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                        color: Fblackcolor),
                  ),
                  Text("  Good Afternoon",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Fblackcolor))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.w, bottom: 25.h),
              child: GestureDetector(
                onTap: () {
                  context.gothrough(const SearchView());
                },
                child: SearchWidgets(
                  key: tutroial.obalKey,
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.only(bottom: 25.h),
                child: CarouselSlider.builder(
                  itemCount: homeBase.carsoul.length,
                  itemBuilder: (context, index, ind) {
                    var image = homeBase.carsoul[index];
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Fbluecolor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    onPageChanged: (index, r) {
                      timerdecreseWidgets.currentIndex.value = index;
                    },
                    enlargeCenterPage: true,
                    autoPlay: true,
                    scrollDirection: Axis.horizontal,
                    autoPlayCurve: Curves.ease,
                    height: 200.h,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Obx(() {
                return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: homeBase.carsoul.map((item) {
                      return Container(
                          margin: EdgeInsets.only(left: 10.w),
                          height: 20.r,
                          width: homeBase.carsoul.indexOf(item) ==
                                  timerdecreseWidgets.currentIndex.value
                              ? 35.r
                              : 20.r,
                          decoration: BoxDecoration(
                              color: homeBase.carsoul.indexOf(item) ==
                                      timerdecreseWidgets.currentIndex.value
                                  ? SwithccolorWidgets.correctcolor(
                                      homeBase.carsoul.indexOf(item) + 1)
                                  : Fbluecolor,
                              borderRadius: BorderRadius.circular(12.r)),
                          child: homeBase.carsoul.indexOf(item) ==
                                  timerdecreseWidgets.currentIndex.value
                              ? Center(
                                  child: Text(
                                    "${timerdecreseWidgets.currentIndex.value + 1}/${homeBase.carsoul.indexOf(item) + 1}",
                                    style: TextStyle(
                                        color: Fwhitcolor,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 11.sp),
                                  ),
                                )
                              : null);
                    }).toList());
              }),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 24.w),
            //   child: Row(
            //     children: [
            //       Text(
            //         "All Categories",
            //         style: TextStyle(fontSize: 20.sp),
            //       ),
            //       const Spacer(),
            //       // Text(
            //       //   "See All",
            //       //   style: TextStyle(fontSize: 20.sp),
            //       // ),
            //       const Icon(
            //         Icons.arrow_right_outlined,
            //         color: Fblackcolor,
            //       )
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: 24.w),
            //   child: SizedBox(
            //     height: 70.h,
            //     child: Obx(
            //       () {
            //         debugPrint("${showmessageApi.foodchip.length}");
            //         return ListView.builder(
            //           scrollDirection: Axis.horizontal,
            //           itemCount: showmessageApi.foodchip.isNotEmpty
            //               ? showmessageApi.foodchip.length - 4
            //               : 4,
            //           itemBuilder: (context, index) {
            //             return showmessageApi.foodchip.isNotEmpty
            //                 ? RectanglechipWidget(
            //                     title: showmessageApi.foodchip[index]
            //                         ["category"])
            //                 : const ShimmerWiedgets();
            //           },
            //         );
            //       },
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Open Restaurants",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10.h,
                        ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: homeBase.restraunt.length,
                    itemBuilder: (context, index) {
                      var restarunt = homeBase.restraunt;
                      return RestaurantsCardnet(
                        index: index,
                        restaruntName: restarunt[index]['name'],
                        category: restarunt[index]['category'],
                        rating: restarunt[index]['rating'],
                        open: index == 2 ? false : restarunt[index]['open'],
                        coverimage: restarunt[index]['coverimage'],
                        logoimage: restarunt[index]['logoimage'],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
