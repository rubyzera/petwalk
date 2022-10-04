import 'package:flutter/material.dart';
import '../routes.dart';
import 'dart:io';
import 'dart:ui';
import 'package:camera_camera/camera_camera.dart';
import 'package:pet_walk/preview_page/preview_page.dart';
import 'package:pet_walk/anexo/anexo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  File? arquivo;
  final picker = ImagePicker();

  Future getFileFromGallery() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => arquivo = File(file.path));
    }
  }

  showPreview(file) async {
    File? arq = await Get.to(() => PreviewPage(file: file));

    if (arq != null) {
      setState(() => arquivo = arq);
      Get.back();
    }
  }
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
                if (arquivo != null) Anexo(arquivo: arquivo!),
                ElevatedButton.icon(
                  onPressed: () => Get.to(
                      () => CameraCamera(onFile: (file) => showPreview(file)),
                  ),
                  icon: Icon(Icons.camera_alt),
                  label: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Tire uma foto'),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    textStyle: TextStyle(
                      fontSize: 18,
                    )),
                ),
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
                  onTap: (){
                    Navigator.of(context).pushNamed(RouteGenerator.registerpet);
                  },
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
