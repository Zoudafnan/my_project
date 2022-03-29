import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:garbage/pages/detail_page.dart';
import 'package:garbage/widgets/app_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:garbage/widgets/normal_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green.shade600,
        title: AppText(text: 'Garbage',color: Colors.white,size: 20,),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 20),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: width/2.4,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/4938754.jpg'),
                            )
                          ),
                        ),
                       Container(
                         child: Center(child: SmallText(text: 'No of Bins',size: 14,color: Colors.white,)),
                         width: width/2.5,
                         height: 23,
                         color: Colors.green.shade600,
                       )
                      ],
                    ),
                    height: 130,
                    width: width/2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: const [BoxShadow(
                          blurRadius: 0.3,
                          color: Colors.grey
                      ),
                      ],
                    ),
                  ),
                  SizedBox(width: width*0.02,),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: width/2.4,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/23854351.jpg'),
                              )
                          ),
                        ),
                        Container(
                          child: Center(child: SmallText(text: 'No of Locations',size: 14,color: Colors.white,)),
                          width: width/2.5,
                          height: 23,
                          color: Colors.green.shade600,
                        )
                      ],
                    ),
                    height: 130,
                    width: width/2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: const [BoxShadow(
                          blurRadius: 0.3,
                          color: Colors.grey
                      ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 8),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: width/5,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/689408.jpg'),
                              )
                          ),
                        ),
                        Container(
                          child: Center(child: SmallText(text: 'Recycle',size: 14,color: Colors.white,)),
                          width: width/2.5,
                          height: 23,
                          color: Colors.green.shade600,
                        )
                      ],
                    ),
                    height: 130,
                    width: width/2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: const [BoxShadow(
                          blurRadius: 0.3,
                          color: Colors.grey
                      ),
                      ],
                    ),
                  ),
                  SizedBox(width: width*0.02,),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: width/2.4,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/21056724.jpg'),
                              )
                          ),
                        ),
                        Container(
                          child: Center(child: SmallText(text: 'About',size: 14,color: Colors.white,)),
                          width: width/2.5,
                          height: 23,
                          color: Colors.green.shade600,
                        )
                      ],
                    ),
                    height: 130,
                    width: width/2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: const [BoxShadow(
                          blurRadius: 0.3,
                          color: Colors.grey
                      ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.01,),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
                itemBuilder: (BuildContext context,int index){
                  return GestureDetector(
                    onTap: (){
                  Navigator.push(
                      context,
                   MaterialPageRoute(builder: (context) => const garb()));
                    },
                    child: Card(
                      elevation: 0,
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 3,bottom: 3),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://assets.nationbuilder.com/toenviro/pages/1184/attachments/original/1426624213/TORSTAR-greenbins-franz-interview-march13.jpg?1426624213')
                              )
                            ),
                          ),
                        ),
                        title: Row(
                          children: [
                            const Icon(Icons.location_on_outlined,color: Colors.grey,size: 16,),
                            SmallText(text: 'Holla Compound MAlpe',size: 14,)
                          ],
                        ),
                        trailing: CircularPercentIndicator(
                          radius: 18,
                          percent: 0.8,
                          progressColor: Colors.red,
                          animation: true,
                          animationDuration: 1500,
                          center: SmallText(text: '80%',size: 10,color: Colors.black,),
                        ),
                      ),
                    ),
                  );
                }
                ),
          ],
        ),
      ),
    );
  }
}
