// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  CategoryView({Key? key}) : super(key: key);
  @override
  final controller = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Container(
              
              padding: const EdgeInsets.all(4),
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  _buildChoiceChips(
                    // '分类',
                    controller.selectedChoiceIndex,
                    controller.category,
                  ),
                  _buildChoiceChips(
                    // '地区',
                    controller.selectedChoiceIndex1,
                    controller.areas,
                  ),
                  _buildChoiceChips(
                    // '年份',
                    controller.selectedChoiceIndex2,
                    controller.years,
                  ),
                  _buildChoiceChips(
                    // '类型',
                    controller.selectedChoiceIndex3,
                    controller.types,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1,
              children: List.generate(
                20,
                (index) => Container(
                
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: NetworkImage('https://picsum.photos/200'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildChoiceChips(
    // String title,
    RxInt selectedChoiceIndex,
    List<String> choices,
  ) {
    return Container(
   child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: choices
              .asMap()
              .entries
              .map(
                (entry) => Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4,),
                  child: ChoiceChip(
            
                    selectedColor: Colors.blue,
                    label: Text(entry.value),
                    selected: selectedChoiceIndex.value == entry.key,
                    onSelected: (selected) {
                      if (selected) {
                        selectedChoiceIndex.value = entry.key;
                      }
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
