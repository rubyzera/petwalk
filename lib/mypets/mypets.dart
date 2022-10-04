import 'package:flutter/material.dart';
import 'package:pet_walk/routes.dart';

class MyPets extends StatefulWidget {
  const MyPets({Key? key}) : super(key: key);

  @override
  State<MyPets> createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: Color(0xFFF1F3F6),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Meus pets', textAlign: TextAlign.left, style: TextStyle(
                fontFamily: 'Proxima Nova',
                fontSize: 40,
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
              ),),
              SizedBox(height: 20,),
              Text('Cachorros', textAlign: TextAlign.left, style: TextStyle(
                fontFamily: 'Proxima Nova',
                fontSize: 30,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                  width: 344,
                  height: 96,

                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 344,
                                height: 96,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  boxShadow : [BoxShadow(
                                      color: Color.fromRGBO(221, 226, 238, 1),
                                      offset: Offset(10,10),
                                      blurRadius: 24
                                  )],
                                  color : Color.fromRGBO(241, 243, 246, 1),
                                  border : Border.all(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    width: 1,
                                  ),
                                )
                            )
                        ),Positioned(
                            top: 64,
                            left: 96,
                            child: Text('3 anos', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(114, 115, 119, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 36,
                            left: 96,
                            child: Text('Jorgin', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(15, 16, 16, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 17,
                            left: 96,
                            child: Text('Vira-lata', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(114, 115, 119, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 10,
                            left: 2,
                            child: Image.network('https://i.imgur.com/vwdlwdw.png'),
                            )
                      ]
                  )
              ),
            SizedBox(height: 20,),
              Text('Cachorros', textAlign: TextAlign.left, style: TextStyle(
                fontFamily: 'Proxima Nova',
                fontSize: 30,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                  width: 344,
                  height: 96,

                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 344,
                                height: 96,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  boxShadow : [BoxShadow(
                                      color: Color.fromRGBO(221, 226, 238, 1),
                                      offset: Offset(10,10),
                                      blurRadius: 24
                                  )],
                                  color : Color.fromRGBO(241, 243, 246, 1),
                                  border : Border.all(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    width: 1,
                                  ),
                                )
                            )
                        ),Positioned(
                            top: 64,
                            left: 96,
                            child: Text('2 anos', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(114, 115, 119, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 36,
                            left: 96,
                            child: Text('Tales', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(15, 16, 16, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 17,
                            left: 96,
                            child: Text('Gato Persa', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(114, 115, 119, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                          top: 10,
                          left: 2,
                          child: Image.network('https://i.imgur.com/jWYUTsg.png'),
                        )
                      ]
                  )
              ),
              Container(
                  width: 344,
                  height: 96,

                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 344,
                                height: 96,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  boxShadow : [BoxShadow(
                                      color: Color.fromRGBO(221, 226, 238, 1),
                                      offset: Offset(10,10),
                                      blurRadius: 24
                                  )],
                                  color : Color.fromRGBO(241, 243, 246, 1),
                                  border : Border.all(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    width: 1,
                                  ),
                                )
                            )

                        ),Positioned(
                            top: 64,
                            left: 96,
                            child: Text('3 meses', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(114, 115, 119, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 36,
                            left: 96,
                            child: Text('Tico', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(15, 16, 16, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                            top: 17,
                            left: 96,
                            child: Text('Siamês', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(114, 115, 119, 1),
                                fontFamily: 'Proxima Nova',
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),Positioned(
                          top: 10,
                          left: 2,
                          child: Image.network('https://i.imgur.com/e9acjQ0.png'),
                        )
                      ]
                  )
              ),
              SizedBox(height: 180,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(RouteGenerator.mypets);
                },
                child: Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.symmetric(horizontal: 150),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF6EA8FF),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Image.network('https://i.imgur.com/1qpEYDO.png'),
                ),
              ),
            ],



          ),

        ),
      ))
    );
  }
}
