import 'package:app_dat_do/discover/component/section_title.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'data.dart';
import 'package:app_dat_do/discover/component/detail.dart';

class Heo1 extends StatelessWidget {
  var size, h, w;
  Heo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Column(
      children: [
        SectionTitle(
          head1: "recommended for you",
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              products.length,
              (index) => SizedBox(
                child: Card1(
                    title: products[index].title,
                    price: products[index].price,
                    date: products[index].date,
                    distance: products[index].distance,
                    rate: products[index].rate,
                    shopavatar: products[index].shopavatar,
                    shopcover: products[index].shopcover,
                    title2: products[index].title2,
                    type: products[index].type,
                    press: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  DetailsScreen(product: products[index]),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(-1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.ease;
                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    }),
              ),
            ),
          ),
        )
      ],
    );
  }
}
