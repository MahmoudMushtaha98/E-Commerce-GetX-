import 'package:e_commerce_getx/view/screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../../core/constant/dimensions.dart';


class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  bool view=false;
  bool view2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Sameh Mall',style: TextStyle(
            fontWeight: FontWeight.bold
          )),
        ),
        leading:IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)) ,
        actions: [
          IconButton(onPressed: ()
          {

          },
              icon: const Icon(Icons.shopping_cart_outlined)
          ),
        ],
      ),
      body: SingleChildScrollView(
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
              InkWell(
                onTap: () {
                  setState(() {
                    view=!view;
                  });
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
                          image: NetworkImage('https://www.bhg.com/thmb/Mwd_YEkDbVg_fPsUDcWr3eZk9W0=/5645x0/filters:no_upscale():strip_icc()/difference-between-fruits-vegetables-01-5f92e7ec706b463287bcfb46985698f9.jpg'),
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
                            child: Text('vegetable',
                              style: TextStyle(color: Colors.white,fontSize: 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              view == true ?SizedBox(
                height: 400,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const DetailsScreen(),));
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
                  ),
                  separatorBuilder: (context, index) => const SizedBox(height: 5,),
                  itemCount: 10,
                ),
              ):const SizedBox(),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    view2=!view2;
                  });
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
                          image: NetworkImage('https://i0.wp.com/greenfue.com/wp-content/uploads/2023/03/%D8%A7%D9%84%D9%84%D8%AD%D9%88%D9%85.jpg?fit=750%2C422&ssl=1'),
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
                            child: Text('Meat',
                              style: TextStyle(color: Colors.white,fontSize: 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              view2 == true ?SizedBox(
                height: 400,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const DetailsScreen(),));
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
                                  'https://assets-global.website-files.com/5ffed6d64e2e060d2e9c4eb8/606dae8895cb4275d38bd9a0_meat.png',
                                ),
                                  width: width(context)*0.2,
                                  height: 80,
                                ),
                                SizedBox(
                                  width: width(context)*0.02,
                                ),
                                const Text('Meat',style: TextStyle(color: Colors.black,fontSize: 25),),
                                SizedBox(
                                    width: width(context)*0.28
                                ),
                                const Text('7.00\$',style: TextStyle(color: Colors.black,fontSize: 20),),
                              ],
                            )
                        ),
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(height: 5,),
                  itemCount: 10,
                ),
              ):const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}