import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/food_constains.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/ui/tutroial.dart';
import 'package:food/view/cart_editing_view.dart';
import 'package:food/view/search_view.dart';
import 'package:food/widgets/rectanglechip_widget.dart';
import 'package:food/widgets/restaurants_card.dart';
import 'package:food/widgets/search_widgets.dart';
import 'package:food/widgets/showdialog_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Tutroial tutroial = Tutroial();
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Future.delayed(const Duration(seconds: 2), () {
        // tutroial.getdata(context);
        ShowDailogWidget.offerdilog(context);
      });
    }
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
                  Container(
                    key: tutroial.globalKey, //golbakey
                    decoration: const BoxDecoration(
                        color: FlighBcolor, shape: BoxShape.circle),
                    height: 45.h,
                    width: 45.w,
                    child: const Center(
                      child: Icon(CupertinoIcons.line_horizontal_3),
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
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                "Hala lab Office  ",
                                style: TextStyle(
                                    color: Fblackcolor001,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Fblackcolor,
                              )
                            ])
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
              padding: EdgeInsets.only(top: 16.w, bottom: 31.h),
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
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                children: [
                  Text(
                    "All Categories",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 20.sp),
                  ),
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    return RectanglechipWidget(
                      title: foodList[index],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 10.h, bottom: 20.h),
              child: Row(
                children: [
                  Text(
                    "Open Restaurants",
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 20.sp),
                  ),
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
