import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/details/components/add_to_cart.dart';
import 'package:online_shop_app/details/components/color_and_size.dart';
import 'package:online_shop_app/details/components/counter_with_fav_btn.dart';
import 'package:online_shop_app/details/components/description.dart';
import 'package:online_shop_app/details/components/product_title_with_image.dart';
import 'package:online_shop_app/models/product.dart';

class Body extends StatelessWidget {
  const Body({ 
    Key? key, 
    required this.product, 
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefultPaddin,
                    right: kDefultPaddin,
                  ),
                  //height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefultPaddin / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefultPaddin / 2,
                      ),
                      const CounterWithFavBtn(),
                      const SizedBox(
                        height: kDefultPaddin / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}





