import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garbage/widgets/app_text.dart';
import 'package:garbage/widgets/normal_text.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class garb extends StatefulWidget {
  const garb({Key? key}) : super(key: key);

  @override
  _garbState createState() => _garbState();
}

class _garbState extends State<garb> {

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://ewscripps.brightspotcdn.com/dims4/default/d89ddd6/2147483647/strip/true/crop/4032x2268+0+378/resize/1280x720!/quality/90/?url=http%3A%2F%2Fewscripps-brightspot.s3.amazonaws.com%2F9b%2F8b%2F821d490b4010a416d8d975ca08be%2Fstrike.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                )
            ),
            Positioned(
                top: 60,
                left: 20,
                child: Row(children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios,
                    color: Colors.white,
                  ))
                ],)
            ),
            Positioned(
              top: 330,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 520,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        LinearPercentIndicator(
                          width: 300,
                          percent: 0.8,
                          barRadius: Radius.circular(5),
                          alignment: MainAxisAlignment.start,
                          leading: SmallText(text: '80%',size: 12,),
                          animation: true,
                          animationDuration: 1500,
                          progressColor: Colors.red,
                          lineHeight: 12,
                        ),

                        SizedBox(height: height*0.03,),

                        AppText(text: 'Pickup Address',),
                        SizedBox(height: height*0.006,),
                        SmallText(text: 'Holla Compound VB Road Malpe',size: 15,),

                        SizedBox(height: height*0.03,),

                        AppText(text: 'Number Of Bins',),
                        SizedBox(height: height*0.006,),
                        SmallText(text: '5'),

                        SizedBox(height: height*0.03,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined,
                                      size: 18,
                                    ),
                                    SizedBox(width: height*0.006,),
                                    AppText(text: '5 kms away'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 22),
                                  child: SmallText(text: '10 min',size: 15,),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40,top: 10),
                              child: Container(
                                child: Center(child: AppText(text: 'Go',color: Colors.white,size: 22,)),
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(height: height*0.03,),

                        AppText(text: 'Photos Of Junk',),
                        SizedBox(height: height*0.02,),
                        Row(
                          children: [
                             Container(
                               width: 80,
                               height: 80,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.red,
                                 image: const DecorationImage(
                                   image: NetworkImage('https://www.mlive.com/resizer/SgXGKPo6lQMQOR_4T2KXUtdHjuU=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/65QDJM4EMNEPLNO374NJ76NGUA.JPG'),
                                   fit: BoxFit.cover
                                 )
                               ),
                             ),
                            SizedBox(width: width*0.02,),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                      image: NetworkImage('https://www.mlive.com/resizer/SgXGKPo6lQMQOR_4T2KXUtdHjuU=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/65QDJM4EMNEPLNO374NJ76NGUA.JPG'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: width*0.02,),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                      image: NetworkImage('https://www.mlive.com/resizer/SgXGKPo6lQMQOR_4T2KXUtdHjuU=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/65QDJM4EMNEPLNO374NJ76NGUA.JPG'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: width*0.02,),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                      image: NetworkImage('https://www.mlive.com/resizer/SgXGKPo6lQMQOR_4T2KXUtdHjuU=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/65QDJM4EMNEPLNO374NJ76NGUA.JPG'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                )
            )
          ],
        ),
      ),
    );
  }
}
