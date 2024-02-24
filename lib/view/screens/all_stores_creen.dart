import 'package:e_commerce_getx/core/constant/dimensions.dart';
import 'package:e_commerce_getx/view/screens/stores_screen.dart';
import 'package:flutter/material.dart';



class AllStoresScreen extends StatefulWidget {
  const AllStoresScreen({super.key});

  @override
  State<AllStoresScreen> createState() => _AllStoresScreenState();
}

class _AllStoresScreenState extends State<AllStoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child:  Text('Store',style: TextStyle(
              fontWeight: FontWeight.bold
          )),
        ),
        leading:IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
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
              const SizedBox(height: 20,),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
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
                separatorBuilder: (context, index) => const SizedBox(height: 20,),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
