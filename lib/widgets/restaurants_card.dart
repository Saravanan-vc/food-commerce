import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/model/cartitem_model.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/detail_screen/restarunats_detail.dart';

class RestaurantsCard extends StatelessWidget {
  const RestaurantsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.gothrough(const RestarunatsDetail(
          index: 1,
        ));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
        child: SizedBox(
          height: context.fullHeight < 650 ? 0.28.sh : 0.28.sh,
          // width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.sp),
                      color: Fbluecolor),
                ),
              ),
              SizedBox(height: 3.h),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Restaruants Name",
                  style: TextStyle(fontSize: 20.sp, color: Fblackcolor),
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Burger - Chiken - Riche - Wings ",
                  style: TextStyle(fontSize: 20.sp, color: Fblackcolor001),
                ),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.star,
                          color: Forangcolor,
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(fontSize: 14.sp).extrabold(),
                        )
                      ],
                    ),
                    SizedBox(width: 12.w),
                    Row(
                      children: [
                        const Icon(
                          Icons.delivery_dining_outlined,
                          color: Forangcolor,
                        ),
                        Text(
                          "Free",
                          style: TextStyle(fontSize: 14.sp).extrabold(),
                        )
                      ],
                    ),
                    SizedBox(width: 12.w),
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.time,
                          color: Forangcolor,
                        ),
                        Text(
                          "20 min",
                          style: TextStyle(fontSize: 14.sp).extrabold(),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}

// cart side viewing add to cart card
class CartviewingCard extends StatelessWidget {
  final bool remove;
  final CartitemModel cartitemModel;
  const CartviewingCard(
      {super.key, required this.remove, required this.cartitemModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Fwhitecolor012,
            ),
            height: 185.h,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                  height: double.infinity,
                  width: 150.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Fwhitcolor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cartitemModel.foodname,
                            style:
                                TextStyle(color: Fwhitcolor, fontSize: 20.sp),
                          ),
                        ],
                      ),
                      Text(
                        cartitemModel.restaruantname,
                        style: TextStyle(color: Fwhitcolor, fontSize: 16.sp),
                      ),
                      const Spacer(),
                      Text(
                        r"$" + cartitemModel.price,
                        style: TextStyle(color: Fwhitcolor, fontSize: 22.sp),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '''14"''',
                            style:
                                TextStyle(fontSize: 22.sp, color: Fwhitcolor),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 45.w),
                            padding: EdgeInsets.symmetric(horizontal: 14.w),
                            height: MediaQuery.of(context).size.height < 650
                                ? 60.h
                                : 50.h,
                            width: 128.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.sp),
                                color: Ftranscolor),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Fwhitecolor012,
                                        shape: BoxShape.circle),
                                    padding: EdgeInsets.all(3.sp),
                                    child: const Center(
                                        child: Icon(
                                      Icons.remove,
                                      color: Fwhitcolor,
                                    )),
                                  ),
                                  Text(
                                    cartitemModel.ordercount,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Fwhitcolor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Fwhitecolor012,
                                        shape: BoxShape.circle),
                                    padding: EdgeInsets.all(3.sp),
                                    child: const Center(
                                        child: Icon(
                                      Icons.add,
                                      color: Fwhitcolor,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 12,
          top: 12,
          child: (remove)
              ? GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Fredcolor,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(4.sp),
                    child: Center(
                        child: Icon(
                      size: 16.sp,
                      CupertinoIcons.clear,
                      color: Fwhitcolor,
                    )),
                  ),
                )
              : const SizedBox(),
        )
      ],
    );
  }
}

class RestaurantsCardnet extends StatelessWidget {
  final int index;
  final String restaruntName;
  final String category;
  final double rating;
  final bool open;
  final String coverimage;
  final String logoimage;
  const RestaurantsCardnet(
      {super.key,
      required this.restaruntName,
      required this.category,
      required this.rating,
      required this.open,
      required this.coverimage,
      required this.logoimage,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.gothrough(RestarunatsDetail(
          index: index,
        ));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
        child: Stack(
          children: [
            SizedBox(
              height: context.fullHeight < 650 ? 0.28.sh : 0.28.sh,
              // width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.sp),
                          color: Fbluecolor),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.sp),
                        child: Image(
                          image: NetworkImage(coverimage),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      restaruntName,
                      style: TextStyle(fontSize: 20.sp, color: Fblackcolor),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      category,
                      style: TextStyle(fontSize: 20.sp, color: Fblackcolor001),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.star,
                              color: Forangcolor,
                            ),
                            Text(
                              rating.toString(),
                              style: TextStyle(fontSize: 14.sp).extrabold(),
                            )
                          ],
                        ),
                        SizedBox(width: 12.w),
                        Row(
                          children: [
                            const Icon(
                              Icons.delivery_dining_outlined,
                              color: Forangcolor,
                            ),
                            Text(
                              "Free",
                              style: TextStyle(fontSize: 14.sp).extrabold(),
                            )
                          ],
                        ),
                        SizedBox(width: 12.w),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.time,
                              color: Forangcolor,
                            ),
                            Text(
                              "20 min",
                              style: TextStyle(fontSize: 14.sp).extrabold(),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
            Positioned(
              bottom: 60.h,
              right: 10.w,
              child: SizedBox(
                height: 80.h,
                width: 80.w,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image(
                      image: NetworkImage(logoimage),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            open
                ? const Material()
                : Positioned(
                    left: -20.w,
                    top: 6.h,
                    child: Transform.rotate(
                      angle: -0.49,
                      child: Container(
                        width: 110.w,
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        color: Fredcolor,
                        child: const Center(
                          child: Text(
                            "CLOSED",
                            style: TextStyle(color: Fwhitcolor),
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
