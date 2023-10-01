import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movies_online/app/modules/category/views/category_view.dart';
import 'package:movies_online/app/modules/discovery/views/discovery_view.dart';
import 'package:movies_online/app/modules/home/views/home_view.dart';
import 'package:movies_online/app/modules/profile/views/profile_view.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
   MainView({Key? key}) : super(key: key);
   final selectedpage =0.obs;
    final _pages = [
    const HomeView(),
     CategoryView(),
    const DiscoveryView(),
    const ProfileView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Obx(()=> _pages[selectedpage.value]),
       bottomNavigationBar:
          ConvexAppBar(
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.grid_view, title: 'Category'),
            TabItem(icon: Icons.subscriptions, title: 'Discovery'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          
          initialActiveIndex: 0,
          onTap: (int index) {
            selectedpage.value = index;
          },
       ));
    
  }
}
