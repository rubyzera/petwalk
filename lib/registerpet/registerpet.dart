import 'package:flutter/material.dart';

class RegisterPet extends StatefulWidget {
  const RegisterPet({Key? key}) : super(key: key);

  @override
  State<RegisterPet> createState() => _RegisterPetState();
}

class _RegisterPetState extends State<RegisterPet> {
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
              Text("Adicionar um pet", textAlign: TextAlign.center, style: TextStyle(
                fontFamily: 'Proxima Nova',
                fontSize: 40,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ), ),
              SizedBox(height: 20),
              Center(child: Image.network("https://i.imgur.com/CPYDHTE.png")),
              SizedBox(height: 20,),
              Center(child: Text("Tipo")),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color : Color.fromRGBO(29, 108, 227, 1),
                      borderRadius: BorderRadius.all(Radius.circular(4))
                    ),
                    child: Text("Cachorro"),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))
                    ),
                    child: Text("Gato"),
                  )

                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
