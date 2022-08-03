import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx/pages/news/news_controller.dart';
import 'package:get/get.dart';
import 'package:getx/pages/home/home_controller.dart';
import 'package:getx/pages/home/product_tile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController productController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFC6011),
        title: Text(
          "Favourite item🤍",
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.black),
        ),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_literals_to_create_immutables
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productController.filteredProducts.length,
                  crossAxisSpacing: 16, //horizontal spacing
                  mainAxisSpacing: 16, //vertical ---- spacing
                  itemBuilder: (context, index) {
                    return ProductTile(
                        productController.filteredProducts[index]);
                  },
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
