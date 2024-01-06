import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color:Colors.grey[200],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color:Colors.grey[300],
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Center(
                      child: Image.asset('images/bg1.png',width: 700,scale:0.8,),
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                padding: EdgeInsets.only(top:40,bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Column(children: [
                  Text("CHATBOT",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                    wordSpacing: 2,
                  ),),
                  SizedBox(height: 15,),
                  Padding(padding: EdgeInsets.symmetric(horizontal:40),
                  child:Text("Bienvenue dans notre compagnie téléphonique",
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color:Colors.black.withOpacity(0.6),
                    ),)
                  ),
                  SizedBox(height:60 ,),
                  Expanded(
                    child: Material(
                      color:Colors.grey[300],
                      borderRadius: BorderRadius.only(topRight:Radius.circular(50),bottomRight:Radius.circular(50),topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/chatbot');
                        },
                        child: Container(
                          margin: EdgeInsets.all(1),
                          width: 240,
                          padding:  EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(" Chat en direct",
                                style : TextStyle(
                                   color: Colors.black.withOpacity(0.6),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                              ),),
                              Icon(Icons.arrow_forward_ios_sharp)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
