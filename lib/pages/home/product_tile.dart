import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/home/product_model.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    product.pImages[0],
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Obx(() => CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            icon: product.isFavorite.value
                                ? const Icon(Icons.favorite_rounded)
                                : const Icon(Icons.favorite_border),
                            onPressed: () {
                              product.isFavorite.toggle();
                              if (product.isFavorite.value) {
                                AwesomeNotifications().createNotification(
                                    content: NotificationContent(
                                        channelKey: 'basic_channel',
                                        title: 'Favourites',
                                        body: "Added to Favourites ❤️",
                                        id: 1));
                              }
                            },
                            color: Colors.red),
                      )),
                )
              ],
            ),
            const SizedBox(height: 8),
            Text(
              product.pName,
              maxLines: 2,
              style: const TextStyle(
                  fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            if (product.rating != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      product.rating.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 8),
            Text('\$${product.pPrice}',
                style: const TextStyle(fontSize: 32, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}
