import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing3/Task24.dart';

class Task23 extends StatelessWidget {
  const Task23({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> price = ['\$ 230', '\$ 250', '\$ 270', '\$ 290','\$12','\$18','\$11','\$32'];
   return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.1),
                      borderRadius: BorderRadius.circular(5)),
                     child:const Center(
                       child: Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(Icons.arrow_back_ios,size: 25,),
                  )),
                ),
              ),
              const  Text('Star Ring Shop',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 131, 83, 212)),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height:50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Icon(Icons.menu,size: 25,)),
                ),
              ),
            ],
         ),
             const SizedBox(height: 30,),
          
              Expanded(
                child: GridView.builder(
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                  
                ),
                itemBuilder: (context, index) {                                       
                  return   Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 400,
                              width: 650,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: const Color.fromARGB(60, 112, 97, 97),),borderRadius: BorderRadius.circular(15),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color:  Colors.white,
                                            borderRadius: BorderRadius.circular(50),
                                            boxShadow:const [(BoxShadow(color: Colors.black,
                                                blurRadius: 1,
                                                spreadRadius: 1.5))]),
                                                child:const Icon(Icons.favorite_rounded,color: Colors.red,size: 25,),
                                                
                                        ),
                                      ),
                                    ),
                                    Image.network('data:image/jpeg;base64,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',
                                    height: 250.0,
                                      width: 300.0,
                                        fit: BoxFit.cover,),
                                       const SizedBox(height: 10,),
                                       const  Text('Ring',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                          Text(price[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    ],
                                ),
                              ),
                           ),
                          ),
                        const  SizedBox(height: 15,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                 MaterialPageRoute(builder: (context) =>Task24(
                                 price: price[index],
      
                                 )));
                                 
                            },
                            child: favbuynow(),
                          ), ],
                     ),
                    ),
                  );
               },
               itemCount: 8,
               ),
      ),],
     ),
     );
  }
}

class favbuynow extends StatelessWidget {
  const favbuynow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(15),
    ),
    child:const Center(
      child: Text('By Now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
    ),
    ));
  }
}