import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:shop_app/models/Cart.dart';

// import '../../../size_config.dart';
import 'package:shop_app/models/data.dart';
import 'package:shop_app/Food/features/restaurant_page.dart';
import 'package:shop_app/Food/features/rating_stars.dart';
import 'package:shop_app/core/core_export.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Column _buildShops() {
    final shopList = <Widget>[];
    for (final restaurant in restaurants) {
      shopList.add(
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => RestaurantPage(restaurant: restaurant),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey[200]!,
              ),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: restaurant.imageUrl!,
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage(
                        restaurant.imageUrl!,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          restaurant.name!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        RatingStars(
                          rating: restaurant.rating,
                        ),
                        gapH4,
                        Text(
                          restaurant.address!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        gapH4,
                        const Text(
                          '0.2 miles away',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return Column(
      children: shopList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            iconSize: 30,
          ),
          title: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              fillColor: Colors.grey[200],
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              hintText: 'Search...',
              hintStyle: const TextStyle(
                fontSize: 18,
              ),
              prefixIcon: const Icon(
                Icons.search,
              ),
              suffix: const Icon(
                Icons.clear,
              ),
            ),
          ),
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () => (),
              child: Badge(
                largeSize: 18,
                backgroundColor: Theme.of(context).primaryColor,
                // label: Text('${currentUser.cart!.length}'),
                label: Text('3'),

                child: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          physics: const BouncingScrollPhysics(),
          children: [
            // const RecentOrders(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Nearby Restaurants',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                _buildShops(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
