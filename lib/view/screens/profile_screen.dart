import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            const Text(
              'Account',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: width(context) * 0.8,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xff343434),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: width(context)*0.7,),
                          Text('Mahmoud Mushtaha',style: TextStyle(color: Colors.black,fontSize: 20),),

                        ],
                      )),
                  Divider(),
                  Expanded(
                      child: Container(
                    color: Colors.black,
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
