import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/view/screens/stores_screen.dart';
import 'package:flutter/material.dart';


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
                          const Text('Stores',
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
                           Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => const StoresScreen(),));
                         },
                         child: Container(
                           width: double.infinity,
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
