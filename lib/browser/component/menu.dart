import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 0.01,
                blurRadius: 0.01,
              ),
            ],
          ),
          width: 40,
          height: 40,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.save,
              color: Colors.green,
            ), //icon data for elevated button
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 0.01,
                blurRadius: 0.01,
              ),
            ],
          ),
          width: 40,
          height: 40,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.save,
              color: Colors.green,
            ), //icon data for elevated button
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 0.01,
                blurRadius: 0.01,
              ),
            ],
          ),
          width: 140,
          height: 40,
          child: TextButton(
            onPressed: () {},
            child: Text("Try:Bread & pastries"), //icon data for elevated button
          ),
        )
      ],
    );
  }
}
