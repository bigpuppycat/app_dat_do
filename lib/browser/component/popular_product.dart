import 'package:flutter/material.dart';
import 'card.dart';
import 'data.dart';
import 'package:app_dat_do/browser/component/detail.dart';

class YourProduct extends StatelessWidget {
  const YourProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.vertical,
          child: Column(
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
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: products[index]),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
