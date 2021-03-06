import 'package:flutter/material.dart';
import 'package:lean/costant.dart';
import 'package:lean/view/custom_widget/custom_text.dart';

class Products extends StatelessWidget {
  List<String> image = [
    'image/pepper.png',
    'image/pepper.png',
    'image/pepper.png',
    'image/pepper.png',
    'image/pepper.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        child:  GridView.builder(
          padding: EdgeInsets.only(left: 10.0,right: 10.0),
          itemCount: image.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 17.0,
              crossAxisSpacing: 17.0,
              crossAxisCount: 3,
            ),
            itemBuilder: (context,index){
              return Container(
                width: 300,
                height: 500,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(image[index],width: 90,height: 90,),
                      SizedBox(height: 5.0,),
                      CustomText(text: 'Yellow Capsicum',fontSize: 13.0,color: Colors.black,),
                      SizedBox(height: 5.0,),
                      Row(
                        children: [
                          CustomText(text: '250 gm',fontSize: 13.0,color: secondColor,),
                          SizedBox(width: 17,),
                          CustomText(text: '5 SR',fontSize: 13.0,color: primaryColor,),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: secondColor,
                            radius: 12.0,
                            child: Icon(Icons.remove,color: Colors.white,),
                          ),
                          SizedBox(width: 5.0,),
                          Container(width: 30,height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          ),
                            child: Center(child: CustomText(text: '2',color: Colors.grey,fontSize: 15,)),
                          ),
                          SizedBox(width: 5.0,),
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: 12.0,
                            child: Icon(Icons.add,color: Colors.white,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
        }),
      ),
    );
  }
}
