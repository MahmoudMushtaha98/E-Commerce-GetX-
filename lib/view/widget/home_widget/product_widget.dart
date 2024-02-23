
import 'dart:ui';

import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey,blurRadius: 3,spreadRadius: 0.2)
          ]
        ),
        child: Column(
          children: [
            Expanded(
                flex: 60,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    'https://www.shutterstock.com/image-photo/glass-jar-beauty-cream-golden-600nw-2179335315.jpg',
                    fit: BoxFit.cover,
                  ),
                )),
            const Expanded(
                flex: 40,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hiar Cream',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Hiar Cream Hiar Cream Hiar Cream Hiar Cream Hiar Cream Hiar Cream',
                        maxLines: 2,
                        style: TextStyle(overflow: TextOverflow.ellipsis,fontSize: 14),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}