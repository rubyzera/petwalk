import 'package:flutter/material.dart';
import 'package:pet_walk/registerpet/registerpet.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          decoration: BoxDecoration(
            color: Color(0xFFF1F3F6),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Novo Usuário", textAlign: TextAlign.center, style: TextStyle(
                  fontFamily: 'Proxima Nova' ,
                  fontSize: 40,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20),
                Text("Criação de usuário", textAlign: TextAlign.left, style: TextStyle(
                  fontFamily: 'Proxima Nova' ,
                  fontSize: 18,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                ),),
                SizedBox(height: 40,),
                Center(child: Image.network('https://i.imgur.com/PQxG0KD.png')),
                SizedBox(height: 40,),
                Text('Nome Completo'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Nome Completo',
                  ),

                ),
                SizedBox(height: 20,),
                Text('Endereço de e-mail'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Endereço de e-mail',
                  ),
                ),
                SizedBox(height: 20,),
                Text('Senha'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),
                SizedBox(height: 90,),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPet())),
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Text("Criar minha conta",textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,),),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Text("Já tem uma conta? Logar", textAlign: TextAlign.center, style: TextStyle(
                    color: Colors.blue,
                  ),),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
