import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var counter = 1;
  var counter2 = 1;
  var counter3 = 1;
  var firstTaka = 51;
  var secondTaka = 30;
  var thirdTaka = 43;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Bag",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Column(children: [
          Card(child: Row(
            children: [
              Image.asset("assets/images/TShirt Photo.jpg",height: 100,width: 150,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Pullover",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Color: ",style: TextStyle(fontSize: 14,color: Colors.black12),),
                          Text("Black",style: TextStyle(fontSize: 14,color: Colors.black),),
                        ],
                      ),
                      SizedBox(width: 15,),
                      Row(
                        children: [
                          Text("Size: ",style: TextStyle(fontSize: 14,color: Colors.black12),),
                          Text("L",style: TextStyle(fontSize: 14,color: Colors.black),),
                        ],
                      ),
                      SizedBox(width: 50,),
                      Icon(Icons.more_vert,size: 20,color: Colors.black12,),
                    ],
                  ),
                  Row(children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter--;
                      });
                    }, child: const Text("-",style: TextStyle(fontSize: 18),)),
                    const SizedBox(width: 10,),
                    Text("$counter"),
                    const SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter++;
                      });
                    }, child: const Text("+",style: TextStyle(fontSize: 18),)),
                    const SizedBox(width: 20,),

                    Text("${counter*firstTaka}\$",style: TextStyle(fontWeight: FontWeight.bold),),


                  ],),
                ],
              ),
            ],
          ),),
          const SizedBox(height: 20,),
          Card(child: Row(
            children: [
              Image.asset("assets/images/TShirt Photo.jpg",height: 100,width: 150,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("T-Shirt",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  const Row(
                    children: [
                      Row(
                        children: [
                          Text("Color: ",style: TextStyle(fontSize: 14,color: Colors.black12),),
                          Text("Grey",style: TextStyle(fontSize: 14,color: Colors.black),),
                        ],
                      ),
                      SizedBox(width: 15,),
                      Row(
                        children: [
                          Text("Size: ",style: TextStyle(fontSize: 14,color: Colors.black12),),
                          Text("L",style: TextStyle(fontSize: 14,color: Colors.black),),
                          SizedBox(width: 50,),
                          Icon(Icons.more_vert,size: 20,color: Colors.black12,),
                        ],
                      ),
                    ],
                  ),
                  Row(children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter2--;
                      });
                    }, child: const Text("-",style: TextStyle(fontSize: 18),)),
                    const SizedBox(width: 10,),
                    Text("$counter2"),
                    const SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter2++;
                      });
                    }, child: const Text("+",style: TextStyle(fontSize: 18),)),
                    const SizedBox(width: 20,),

                    Text("${counter2*secondTaka}\$",style: TextStyle(fontWeight: FontWeight.bold),),

                  ],),
                ],
              ),
            ],
          ),),
          const SizedBox(height: 20,),
          Card(

            child: Row(
            children: [
              Image.asset("assets/images/TShirt Photo.jpg",height: 100,width: 150,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Sport Dress",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  const Row(
                    children: [
                      Row(
                        children: [
                          Text("Color: ",style: TextStyle(fontSize: 14,color: Colors.black12),),
                          Text("Black",style: TextStyle(fontSize: 14,color: Colors.black),),
                        ],
                      ),
                      SizedBox(width: 15,),
                      Row(
                        children: [
                          Text("Size: ",style: TextStyle(fontSize: 14,color: Colors.black12),),
                          Text("M",style: TextStyle(fontSize: 14,color: Colors.black),),
                        ],
                      ),
                      SizedBox(width: 50,),
                      Icon(Icons.more_vert,size: 20,color: Colors.black12,),
                    ],
                  ),
                  Row(children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter3--;
                      });
                    }, child: const Text("-",style: TextStyle(fontSize: 18),)),
                    const SizedBox(width: 10,),
                    Text("$counter3"),
                    const SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter3++;
                      });
                    }, child: const Text("+",style: TextStyle(fontSize: 18),)),
                    const SizedBox(width: 20,),
                    Text("${counter3*thirdTaka}\$",style: TextStyle(fontWeight: FontWeight.bold),),

                  ],),
                ],
              ),
            ],
          ),),
          const SizedBox(height: 250,),

           Row(

             children: [
               SizedBox(width: 30,),
            Text("Total Amount: ",style: TextStyle(fontSize: 16,color: Colors.black12),),
            SizedBox(width: 180,),
            Text("${(counter2*secondTaka)+(counter3*thirdTaka)+(counter*firstTaka)}\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          ],),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Congratulations")));
            },
            child: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                   color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(child: Text("CHECK OUT",style: TextStyle(color: Colors.white),)),
            ),
          )
        ],),
      ),
    );
  }
}
