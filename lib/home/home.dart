import 'package:flutter/material.dart';
import '../routes.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          width:double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFF1F3F6),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pet Walk', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(117, 172, 255, 1),
                  fontFamily: 'Rubik',
                  fontSize: 48,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1
              ),),
              SizedBox(height: 20),
              Image.network("https://i.imgur.com/rY4PkZR.png"),
              SizedBox(height: 20),
              Text("A aplicação Pet Walk foi concebida para tomar conta do seu animal de estimação. Fixe objectivos com base nas suas necessidades. Veja os seus progressos e partilhe-os com a comunidade.",style: TextStyle(color: Color(0xFF77787B)), textAlign: TextAlign.left,),
              SizedBox(height: 40),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(RouteGenerator.register);
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F3F6),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text("Vamos começar",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
