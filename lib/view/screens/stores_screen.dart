import 'package:e_commerce_getx/view/screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../../core/constant/dimensions.dart';


class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width(context)*0.78,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  padding: const EdgeInsets.only(left: 8),
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                        border:InputBorder.none,
                        prefixIcon: Icon(
                            Icons.search_rounded
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        )
                    ),
                  ),
                ),
                IconButton(onPressed: ()
                {
                },
                  icon: const Icon(Icons.filter_list,
                    size: 35,),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          const Text('Product',
                            style: TextStyle(
                              color: Colors.black,
                            ),),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 8),
                              color: Colors.grey.shade300,
                              height: 2,

                            ),
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ...List.generate(10, (index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailsScreen(),));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child:  Row(
                            children: [
                              Image(image: const NetworkImage(
                                'https://www.themilefarmshop.co.uk/images/shop/more/612x612_4885_33d664f3f240d5331b398bbe4ee99f8f_1610031569istockphoto466175630612x.jpg',
                              ),
                                width: width(context)*0.2,
                                height: 80,
                              ),
                              SizedBox(
                                width: width(context)*0.02,
                              ),
                              const Text('Tomato',style: TextStyle(color: Colors.black,fontSize: 25),),
                              SizedBox(
                                width: width(context)*0.28
                              ),
                              const Text('0.25\$',style: TextStyle(color: Colors.black,fontSize: 20),),
                            ],
                          )
                        ),
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}