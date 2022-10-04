import 'package:flutter/material.dart';
import 'package:pet_walk/routes.dart';

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
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 100,),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color : Color.fromRGBO(29, 108, 227, 1),
                      borderRadius: BorderRadius.all(Radius.circular(4))
                    ),
                    child: Text("Cachorro", style: TextStyle(
                      color: Colors.white,
                    ),),
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
              ),
              SizedBox(height: 20),
              Text('Nome'),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Nome',
                ),

              ),
              SizedBox(height: 20,),
              Text('Raça'),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Raça',
                ),
              ),
              SizedBox(height: 20,),
              Text('Data de nascimento'),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: '01/01/2020',
                ),
              ),
              SizedBox(height: 90,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(RouteGenerator.mypets);
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF6EA8FF),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text("Adicionar um pet",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold, color: Colors.white,),),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
