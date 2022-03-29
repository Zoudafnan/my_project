import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garbage/pages/hoem_page.dart';
import 'package:garbage/widgets/app_text.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 100,left: 50),
              child: AppText(text: 'Welcome',color: Colors.white,size:25),
            ),
            width: width,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.green.shade600,
              image: DecorationImage(
                image: AssetImage('assets/human.png'),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
              )
            ),
          ),
          SizedBox(height: height*0.08,),
          ElevatedButton(
              onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const Home()));
              },
              child: AppText(text: 'Get Started',color: Colors.white,),
            style: ElevatedButton.styleFrom(
              primary: Colors.green.shade600,
              fixedSize: Size(300, 50),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )

            ),
          )
        ],
      ),
    );
  }
}
