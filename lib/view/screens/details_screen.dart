import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:flutter/material.dart';
import '../../core/constant/const_color.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int lineText=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFE7E7E7) ,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      color: Colors.white,

                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.black,
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding:EdgeInsets.all(8.0),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('4.8',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.star,
                          color: Colors.yellow,)

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: 238,
                child: AspectRatio(aspectRatio:1,
                  child: Image.network('https://media.post.rvohealth.io/wp-content/uploads/2020/09/AN313-Tomatoes-732x549-Thumb-732x549.jpg',fit: BoxFit.cover),),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 380,
              margin:const EdgeInsets.only(top: 20),
              padding:const EdgeInsets.only(top: 20),
              decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40) )
              ),
              child: ListView(
                children: [
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 20.0), 
                    child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Tomato™',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),),
            
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin:  const EdgeInsets.only(bottom: 8),
                    width: width(context)*0.25,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child:const Center(
                      child:  Text('0.25\$ Kg',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),),
                    ),
                  ),
                ],
              ),
            ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 64.0),
                    child: Text(maxLines: lineText,
                      'Tomatoes are known for their juicy flesh and slightly tangy flavor. They are versatile and can be consumed raw in salads, sandwiches, or as a snack, as well as cooked in sauces, soups, stews, and various other dishes. Tomatoes are rich in vitamins C and K, as well as potassium and folate. The tomato fruit varies in size from small cherry tomatoes to larger beefsteak tomatoes, and it comes in various colors such as red, yellow, orange, green, and even purple, depending on the variety. Tomatoes are often harvested when they are still firm and ripened off the vine for better transportation and storage.',
                      style:const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
            
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if(lineText==3){
                          lineText=10;
                        }
                        else
                          lineText=3;
                      });
                    },
                    child: Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 20.0,
                          vertical: 10),
                      child: Row(
                        children: [
                          Text(lineText==3? 'See More Detail':'See less details',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color:buttonColor,
                            ), ),
                          const SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_ios,size: 12,color: buttonColor,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black26)
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          border:InputBorder.none,
                          hintText: 'Quantity \$',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width(context)*0.05,),
                Expanded(
                  child: InkWell(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Add To Cart',style: TextStyle(
                            color: Colors.black,
                            fontSize: 15
                          ),),
                          Icon(Icons.shopping_cart_outlined)
                        ],
                      )
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}