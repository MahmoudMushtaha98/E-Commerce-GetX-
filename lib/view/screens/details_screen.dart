import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                      icon: Icon(
                        Icons.heart_broken,
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
                    child: Padding(
                      padding:const EdgeInsets.all(8.0),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('4.8',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: SvgPicture.asset(
                              'assets/icons/Star Icon.svg',
                              width: 15,
                              height: 15,
                            ),
                          ),

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
              Container(
                width: 238,
                child: AspectRatio(aspectRatio:1,
                  child: Image.asset(''),),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 380,
            margin:const EdgeInsets.only(top: 20),
            padding:const EdgeInsets.only(top: 20),
            decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40) )
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.0),
                    child:  Text('Wireless Controller for PS4™',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Muli',
                      ),),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 64,
                      padding: const EdgeInsets.all(15),
                      decoration:const  BoxDecoration(
                        color: Color(0xFFfeeae3),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                      ),
                      child:  SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 64.0),
                    child: Text(maxLines: lineText,
                      'Overall, the wireless controller for PS4™ is a central element in the gaming experience, providing users with the means to interact seamlessly with their favorite games on the PlayStation 4 console. Its ergonomic design, advanced features, and wireless capabilities contribute to an immersive and enjoyable gaming experience.',
                      style:const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: 'Muli',
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
                            style:const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.orange,
                              fontFamily: 'Muli',
                            ), ),
                          const SizedBox(width: 5,),
                          const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.orange,)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 93,
                    width: double.infinity,
                    decoration:const  BoxDecoration(
                      color: Color(0xFFE7E7E7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                ],

              ),
            ),

          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 16.0,horizontal: 60),
            decoration:const  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}