import 'package:flutter/material.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/view/detail_screen/personalinfo_detail.dart';

List userone = [
  [
    Icons.person_2_outlined,
    "Personal Info",
    const PersonalinfoDetail(),
    Forangcolor
  ],
  [Icons.map_outlined, "Addresses", const PersonalinfoDetail(), Fbluecolor]
];

List usertwo = [
  [Icons.shopping_bag_outlined, "Cart", () {}, Fbluecolor],
  [Icons.favorite_outline, "Favourite", () {}, Flightornagelir],
  [Icons.notifications_none, "Notifications", () {}, Forangcolor],
  [Icons.payment, "Payment Method", () {}, FLblucolor],
  [Icons.history, "History", () {}, Fredcolor]
];

List userthere = [
  [Icons.question_mark_rounded, "FAQs", () {}, Fredcolor],
  [Icons.reviews_outlined, "User Reviews", () {}, Flightornagelir],
  [Icons.settings, "Settings", () {}, Fgreencolor]
];

List userfour = [
  [Icons.output_rounded, "Log Out", () {}, Fbluecolor],
];

List userinfo = [
  [Icons.person_2_outlined, "Vishal khadok", Forangcolor],
  [Icons.mail_outline_outlined, "hello@gmail.com", Fbluecolor],
  [Icons.call, "000 000 0000", Fgreencolor]
];

List<String> title = ["FULL NAME", "EMAIL", "PHONE NUMBER"];
