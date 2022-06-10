import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.mode_edit, color: Colors.black),
            ),
          ),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Icon(Icons.search, color: Colors.black),
          ),
          onTap: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          child: Container(
            height: 30,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Text('shadow'),
          ),
          onTap: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          child: Container(
            height: 30,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Text('shadow'),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
