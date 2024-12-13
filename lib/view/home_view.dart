import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/api/showmessage_api.dart';
import 'package:food/constains/food_constains.dart';
import 'package:food/model/sharedperference_mdel.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/ui/tutroial.dart';
import 'package:food/view/cart_editing_view.dart';
import 'package:food/view/perfoilmenu_screen.dart';
import 'package:food/view/search_view.dart';
import 'package:food/widgets/rectanglechip_widget.dart';
import 'package:food/widgets/restaurants_card.dart';
import 'package:food/widgets/search_widgets.dart';
import 'package:food/widgets/timerdecrese_widgets.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Tutroial tutroial = Tutroial();
  ShowmessageApi showmessageApi = Get.find<ShowmessageApi>(tag: "chip");
  TimerdecreseWidgets timerdecreseWidgets =
      Get.find<TimerdecreseWidgets>(tag: "timer");
  String? valued = "Home";
  @override
  void initState() {
    SharedperferenceMdel.setinitalpermisiion();
    showmessageApi.fetchingchip();
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hey Hala, ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                        color: Fblackcolor001),
                  ),
                  Text("Good Afternoon",
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
            Padding(
              padding: EdgeInsets.only(bottom: 25.h),
              child: CarouselSlider.builder(
                itemCount: foodList.length,
                itemBuilder: (context, index, ind) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Fbluecolor,
                        borderRadius: BorderRadius.circular(8.r)),
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
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Obx(() {
                return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: foodList.map((item) {
                      debugPrint(
                          "${timerdecreseWidgets.currentIndex.value}/$item");
                      return Container(
                          margin: EdgeInsets.only(left: 10.w),
                          height: 20.r,
                          width: foodList.indexOf(item) ==
                                  timerdecreseWidgets.currentIndex.value
                              ? 40.r
                              : 20.r,
                          decoration: BoxDecoration(
                              color: Fbluecolor,
                              borderRadius: BorderRadius.circular(12.r)),
                          child: foodList.indexOf(item) ==
                                  timerdecreseWidgets.currentIndex.value
                              ? Center(
                                  child: Text(
                                    "${timerdecreseWidgets.currentIndex.value}/${foodList.indexOf(item)}",
                                    style: TextStyle(
                                        color: Fwhitcolor,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14.sp),
                                  ),
                                )
                              : null);
                    }).toList());
              }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                children: [
                  Text(
                    "All Categories",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  const Spacer(),
                  // Text(
                  //   "See All",
                  //   style: TextStyle(fontSize: 20.sp),
                  // ),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Fblackcolor,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: SizedBox(
                height: 70.h,
                child: Obx(
                  () {
                    debugPrint("${showmessageApi.foodchip.length}");
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: showmessageApi.foodchip.isNotEmpty
                          ? showmessageApi.foodchip.length - 4
                          : 4,
                      itemBuilder: (context, index) {
                        return RectanglechipWidget(
                          title: showmessageApi.foodchip.isNotEmpty
                              ? showmessageApi.foodchip[index]["category"]
                              : foodList[index],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 10.h),
              child: Row(
                children: [
                  Text(
                    "Open Restaurants",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  const Spacer(),
                  // Text(
                  //   "See All",
                  //   style: TextStyle(fontSize: 20.sp),
                  // ),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Fblackcolor,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const RestaurantsCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
