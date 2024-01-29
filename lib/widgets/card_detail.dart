import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop_app/models/ServiceItems.dart';
import 'package:shop_app/core/constants/shop_colors.dart';
import 'package:shop_app/widgets/custom_app_bar.dart';
import 'package:shop_app/widgets/rating_tag.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:shop_app/widgets/selectable_circle_color.dart';
import 'package:shop_app/widgets/selectable_circle_size.dart';
import 'package:shop_app/widgets/review_tile.dart';
import 'package:shop_app/Service/components/reviews_page.dart';
import 'package:shop_app/Service/service_screen.dart';

class CardDetail extends StatefulWidget {
  final ServiceItems service;
  CardDetail({required this.service});
  @override
  _CardDetailState createState() => _CardDetailState();
}

class _CardDetailState extends State<CardDetail> {
  PageController productImageSlider = PageController();
  @override
  Widget build(BuildContext context) {
    ServiceItems service = widget.service;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: AppColor.border, width: 1))),
        child: Row(children: [
          Container(
            width: 64,
            height: 64,
            margin: EdgeInsets.only(right: 14),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.secondary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 0,
              ),
              onPressed: () {
                // Navigator.pop(context);
              },
              child: SvgPicture.asset('assets/icons/Chat.svg',
                  color: Colors.white),
            ),
          ),
          Expanded(
              child: SizedBox(
            height: 64,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 0,
              ),
              onPressed: () {},
              child: Text(
                'Order',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
          ))
        ]),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              // product image
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => ImageViewer(imageUrl: product.image),
                  //   ),
                  // );
                  Navigator.pop(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 310,
                  color: Colors.white,
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    controller: productImageSlider,
                    children: List.generate(
                      service.image.length,
                      (index) => Image.asset(
                        service.image[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              // appbar
              CustomAppBar(
                title: '${service.storeName}',
                leftIcon: SvgPicture.asset('assets/icons/Arrow-left.svg'),
                rightIcon: SvgPicture.asset(
                  'assets/icons/Bookmark.svg',
                  color: Colors.black.withOpacity(0.5),
                ),
                leftOnTap: () {
                  Navigator.pop(context);
                },
                rightOnTap: () {},
              ),
              // indicator
              Positioned(
                bottom: 16,
                child: SmoothPageIndicator(
                  controller: productImageSlider,
                  count: service.image.length,
                  effect: ExpandingDotsEffect(
                    dotColor: AppColor.primary.withOpacity(0.2),
                    activeDotColor: AppColor.primary.withOpacity(0.2),
                    dotHeight: 8,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              service.name,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'poppins',
                                  color: AppColor.secondary),
                            ),
                          ),
                          RatingTag(
                              value: service.rating,
                              margin: EdgeInsets.only(left: 10))
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Text(
                      '${service.price}',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'poppins',
                          color: AppColor.primary),
                    ),
                  ),
                  Text(
                    'click to babershop',
                    style: TextStyle(
                        color: AppColor.secondary.withOpacity(0.7),
                        height: 150 / 100),
                  )
                ]),
          ),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   padding: EdgeInsets.symmetric(horizontal: 16),
          //   margin: EdgeInsets.only(bottom: 20),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Color',
          //         style: TextStyle(
          //           color: AppColor.secondary,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w600,
          //           fontFamily: 'poppins',
          //         ),
          //       ),
          //       SelectableCircleColor(
          //         colorWay: service.colors,
          //         margin: EdgeInsets.only(top: 12),
          //         padding: EdgeInsets.all(0),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16),
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Capacity',
                  style: TextStyle(
                    color: AppColor.secondary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins',
                  ),
                ),
                SelectableCircleSize(
                  productSize: service.sizes,
                  margin: EdgeInsets.only(top: 12),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpansionTile(
                  initiallyExpanded: true,
                  childrenPadding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                  tilePadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  title: Text(
                    'Reviews',
                    style: TextStyle(
                      color: AppColor.secondary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins',
                    ),
                  ),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          ReviewTile(review: service.reviews[index]),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 16),
                      itemCount: 2,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 52, top: 12, bottom: 6),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ReviewsPage(
                                reviews: service.reviews,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'See More Reviews',
                          style: TextStyle(
                              color: AppColor.secondary,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColor.primary,
                          elevation: 0,
                          backgroundColor: AppColor.primarySoft,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
