import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/controller/cart_get_controller.dart';
import 'package:food/model/cartitem_model.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/detail_screen/addressview_detail.dart';
import 'package:food/view/payment_view.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';
import 'package:food/widgets/restaurants_card.dart';
import 'package:get/get.dart';

class CartEditingView extends StatelessWidget {
  const CartEditingView({super.key});

  @override
  Widget build(BuildContext context) {
    CartGetController cartGetController =
        Get.find<CartGetController>(tag: "cart");
    return Obx(() {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              height: context.fullHeight,
              width: double.infinity,
              color: Fblackcolor,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 50.h),
                child: Column(
                  children: [
                    Row(
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
                                    color: Fwhitecolor012,
                                    shape: BoxShape.circle),
                                height: 45.h,
                                width: 45.w,
                                child: const Center(
                                  child: Icon(
                                    CupertinoIcons.back,
                                    color: Fwhitcolor,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.w),
                              child: Text(
                                "CART",
                                style: TextStyle(
                                    color: Fwhitcolor,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Aunderbutton1(
                            ontap: cartGetController.changetoediti,
                            text: cartGetController.editing.value,
                            textcolor: cartGetController.color.value)
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 480.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return CartviewingCard(
                            remove: cartGetController.isediting.value,
                            cartitemModel: CartitemModel(
                                foodname: "foodname",
                                restaruantname: "restaruantname",
                                price: "45",
                                ordercount: "1"),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              left: 12,
              right: 12, // Stretching the container horizontally
              child: Container(
                height: context.fullHeight / 2.8,
                decoration: BoxDecoration(
                    color: Fwhitcolor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.r))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    children: [
                      const Spacer(),
                      Row(
                        children: [
                          Text("DELIVERY ADDERESS*",
                              style: TextStyle(fontSize: 18.sp)),
                          const Spacer(),
                          Aunderbutton1(
                            text: "EDIT",
                            textcolor: Forangcolor,
                            ontap: () {
                              context.gothrough(const AddressviewDetail());
                            },
                          )
                        ],
                      ),
                      const Spacer(),
                      InputfieldWidgets(
                          hinttext: "2118 Thornridge Cir. Syracuse",
                          controller: TextEditingController()),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            "Total : ",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          Text(
                            r" $ 69",
                            style: const TextStyle().fontsize(30).extrabold(),
                          ),
                          const Spacer(),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              AtextBwidget(
                                  text: "Breakdown",
                                  ontap: () {},
                                  color: Forangcolor),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Fblackcolor,
                                size: 15.sp,
                              )
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      AbuttonWidget(
                          text: "PLACE ORDER",
                          callback: () {
                            context.gothrough(const PaymentView());
                          }),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
