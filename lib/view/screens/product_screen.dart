import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/view/screens/all_stores_creen.dart';
import 'package:e_commerce_getx/view/screens/stores_screen.dart';
import 'package:flutter/material.dart';

import '../../core/constant/const_color.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
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
                Expanded(
                  child: IconButton(onPressed: ()
                  {
                  },
                      icon: const Icon(Icons.filter_list,
                      size: 35,),
                  ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Shopping',
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AllStoresScreen(),));
                            },
                            child: Row(
                              children: [
                                Text(
                                  'See More',
                                  style: TextStyle(
                                      inherit: false,
                                      color: grayColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  color: grayColor,
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                   const SizedBox(
                     height: 20,
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                         itemBuilder: (context, index) => Column(
                       children: [
                         InkWell(
                           onTap: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => const StoresScreen(),));
                           },
                           child: Container(
                             width: width(context)*0.9,
                             height: 200,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20)
                             ),
                             child: ClipRRect(
                               borderRadius:BorderRadius.circular(20) ,
                               child:  Stack(
                                 fit:StackFit.expand,
                                 children: [
                                   const Image(
                                     image: NetworkImage('https://cdn01.buxtonco.com/news/1903/marketing-to-attract-grocery-stores__large.jpg'),
                                     fit:BoxFit.cover ,
                                   ),
                                   Container(
                                     width: double.infinity,
                                     height: 200,
                                     decoration: BoxDecoration(
                                         color: Colors.black38,
                                         borderRadius: BorderRadius.circular(20)
                                     ),
                                     child: const Align(
                                       child: Text('Sameh Mall',
                                         style: TextStyle(color: Colors.white,fontSize: 40),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                         separatorBuilder: (context, index) => const SizedBox(width: 10,),
                         itemCount: 10,
                       scrollDirection: Axis.horizontal,
                     ),
                   ),
                   const SizedBox(
                     height: 20,
                   ),
                   Align(
                       alignment: Alignment.topLeft,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           const Text('Fashion',
                             style: TextStyle(
                               color: Colors.black,
                             ),),
                           Row(
                             children: [
                               Text(
                                 'See More',
                                 style: TextStyle(
                                     inherit: false,
                                     color: grayColor,
                                     fontSize: 15,
                                     fontWeight: FontWeight.bold),
                               ),
                               Icon(
                                 Icons.arrow_right,
                                 color: grayColor,
                               )
                             ],
                           )
                         ],
                       )),
                   const SizedBox(
                     height: 20,
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                       itemBuilder: (context, index) => Column(
                         children: [
                           InkWell(
                             onTap: () {
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => const StoresScreen(),));
                             },
                             child: Container(
                               width: width(context)*0.9,
                               height: 200,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20)
                               ),
                               child: ClipRRect(
                                 borderRadius:BorderRadius.circular(20) ,
                                 child:  Stack(
                                   fit:StackFit.expand,
                                   children: [
                                     const Image(
                                       image: NetworkImage('https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1920,c_scale,q_auto/cnnarabic/2020/07/01/images/158792.jpg'),
                                       fit:BoxFit.cover ,
                                     ),
                                     Container(
                                       width: double.infinity,
                                       height: 200,
                                       decoration: BoxDecoration(
                                           color: Colors.black38,
                                           borderRadius: BorderRadius.circular(20)
                                       ),
                                       child: const Align(
                                         child: Text('adidas',
                                           style: TextStyle(color: Colors.white,fontSize: 40),
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       separatorBuilder: (context, index) => const SizedBox(width: 10,),
                       itemCount: 10,
                       scrollDirection: Axis.horizontal,
                     ),
                   ),
                   const SizedBox(
                     height: 20,
                   ),
                   Align(
                       alignment: Alignment.topLeft,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           const Text('Technology',
                             style: TextStyle(
                               color: Colors.black,
                             ),),
                           Row(
                             children: [
                               Text(
                                 'See More',
                                 style: TextStyle(
                                     inherit: false,
                                     color: grayColor,
                                     fontSize: 15,
                                     fontWeight: FontWeight.bold),
                               ),
                               Icon(
                                 Icons.arrow_right,
                                 color: grayColor,
                               )
                             ],
                           )
                         ],
                       )),
                   const SizedBox(
                     height: 20,
                   ),
                   SizedBox(
                     height: 200,
                     child: ListView.separated(
                       itemBuilder: (context, index) => Column(
                         children: [
                           InkWell(
                             onTap: () {
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => const StoresScreen(),));
                             },
                             child: Container(
                               width: width(context)*0.9,
                               height: 200,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20)
                               ),
                               child: ClipRRect(
                                 borderRadius:BorderRadius.circular(20) ,
                                 child:  Stack(
                                   fit:StackFit.expand,
                                   children: [
                                     const Image(
                                       image: NetworkImage('https://www.hala.jo/wp-content/uploads/2022/01/22222-2.jpg'),
                                       fit:BoxFit.cover ,
                                     ),
                                     Container(
                                       width: double.infinity,
                                       height: 200,
                                       decoration: BoxDecoration(
                                           color: Colors.black38,
                                           borderRadius: BorderRadius.circular(20)
                                       ),
                                       child: const Align(
                                         child: Text('Apple',
                                           style: TextStyle(color: Colors.white,fontSize: 40),
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                       separatorBuilder: (context, index) => const SizedBox(width: 10,),
                       itemCount: 10,
                       scrollDirection: Axis.horizontal,
                     ),
                   ),
                 ],
               ),
             ),
          ],
        ),
      ),
    );
  }
}
