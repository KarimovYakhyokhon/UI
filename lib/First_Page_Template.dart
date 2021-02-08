import 'package:february_03_ui_1/HomePage.dart';
import 'package:february_03_ui_1/ReusableCard.dart';
import 'package:february_03_ui_1/Utilities.dart';
import 'package:flutter/material.dart';

class FirstPageTemplate extends StatefulWidget {
  @override
  _FirstPageTemplateState createState() => _FirstPageTemplateState();
}

class _FirstPageTemplateState extends State<FirstPageTemplate> {
  appBar() {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_outlined,
          color: kBlackColor,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Colors.deepPurple.shade300,
            child: Icon(
              Icons.person,
              color: kWhiteColor,
            ),
          ),
        )
      ],
    );
  }
  text(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            'Accounts',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('ADD NEW +',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.deepPurple.shade300),),
          ),
        ),
      ],
    );
  }
  upgrade()  {
   return Column(
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            height: MediaQuery.of(context).size.height/6,
            width: MediaQuery.of(context).size.width/1.1,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                color: kWhiteColor,
                boxShadow: [BoxShadow(blurRadius: 3, color: Colors.black12,spreadRadius: 1.0)],
                gradient: LinearGradient(colors: [Colors.red,Colors.blue])
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upgrade your account',style: TextStyle(color: kWhiteColor,fontWeight: FontWeight.bold,fontSize: 18),),
                  Icon(Icons.arrow_forward,color: kWhiteColor,)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: true,
      appBar: appBar(),
      body: Column(
        children: [
          text(),
         upgrade(),
      SizedBox(height: 10),
      Expanded(
        child: Column(
          children: [
           ReusableCard(onPress: null,
           cardChild: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Text('MainWallet',style: TextStyle(color: kWhiteColor),),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 12,left: 12,top: 3),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('\$2049.95',style: TextStyle(fontSize: 18,color: kWhiteColor,fontWeight: FontWeight.bold),),
                     Text('+ 32\%',style: TextStyle(fontSize: 18,color: kWhiteColor,fontWeight: FontWeight.bold), )
                   ],),
               ),
             ],
           )
             ,
           )
          ],
        ),
      ),
          Expanded(
            child: Column(
              children: [
                ReusableCard(onPress: null,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('MainWallet',style: TextStyle(color: kWhiteColor),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12,left: 12,top: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$2049.95',style: TextStyle(fontSize: 18,color: kWhiteColor,fontWeight: FontWeight.bold),),
                            Text('+ 32\%',style: TextStyle(fontSize: 18,color: kWhiteColor,fontWeight: FontWeight.bold), )
                          ],),
                      ),
                    ],
                  )
                  ,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ReusableCard(onPress: null,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('MainWallet',style: TextStyle(color: kWhiteColor),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12,left: 12,top: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$2049.95',style: TextStyle(fontSize: 18,color: kWhiteColor,fontWeight: FontWeight.bold),),
                            Text('+ 32\%',style: TextStyle(fontSize: 18,color: kWhiteColor,fontWeight: FontWeight.bold), )
                          ],),
                      ),
                    ],
                  )
                  ,
                )
              ],
            ),
          ),

        ],
      )
    );
  }
}

