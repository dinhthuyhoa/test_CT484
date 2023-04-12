import 'package:flutter/material.dart';

import '../utils/utils.dart';

AppBar appBar(BuildContext context, String title) => AppBar(
      title: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                height: 2.0,
                color: BaseColor.color1),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_rounded),
                onPressed: () => Navigator.pushNamed(context, '/cart'),
              ),
            ],
          ),
        )
      ],
      centerTitle: false,
    );
