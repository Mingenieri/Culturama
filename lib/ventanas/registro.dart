import 'package:flutter/material.dart';
import 'package:culturama/recursos/colores.dart';
import 'package:culturama/widgets/campos_register.dart';
import 'package:culturama/ventanas/inicio.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final nombreController = TextEditingController();
  final usuarioController = TextEditingController();
  final correoController = TextEditingController();
  final contrasenaController = TextEditingController();

  bool _aceptarTerminos = false;
  String _rolSeleccionado = 'usuario';

  @override
  void dispose() {
    nombreController.dispose();
    usuarioController.dispose();
    correoController.dispose();
    contrasenaController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final double anchoCampo = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left_rounded,
            color: ColoresBase.azul,
            size: 40, // tamaño del icono en píxeles
          ),
        ),
        title: Text(
          "Registro",
          style: TextStyle(
            color: ColoresBase.azul,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        // centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // logo
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: ColoresBase.amarillo,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Text(
                "Unete a la comunidad",
                style: TextStyle(
                  color: ColoresBase.rosaOscuro,
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Crea tu perfil y empieza a jugar",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 11,
                ),
              ),

              const SizedBox(height: 30), // separacion

              CamposRegistro(
                nombreController: nombreController,
                usuarioController: usuarioController,
                correoController: correoController,
                contrasenaController: contrasenaController,
                anchoCampo: anchoCampo,
              ),

              // const SizedBox(height: 10), // separacion
              SizedBox(
                width: anchoCampo,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "!Quiero ser Culturista!",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: ColoresBase.azulOscuro,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width: anchoCampo,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _aceptarTerminos,
                          onChanged: (bool? valor) {
                            setState(() {
                              _aceptarTerminos = valor ?? false;
                            });
                          },
                          activeColor: ColoresBase.verde,
                        ),
                        SizedBox(height: 8),
                        SizedBox(
                          width: 200,
                          child: RichText(
                            text: TextSpan(
                              text: "Acepto los ",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: "Términos y Condiciones",
                                  style: TextStyle(
                                    color: ColoresBase.verdeOscuro,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () async {
                                          var url = Uri.parse(
                                            "https://google.com/",
                                          );
                                          if (await canLaunchUrl(url))
                                            await launchUrl(url);
                                        },
                                ),
                                TextSpan(text: " y la "),
                                TextSpan(
                                  text: "Política de Privacidad",
                                  style: TextStyle(
                                    color: ColoresBase.verdeOscuro,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () async {
                                          var url = Uri.parse(
                                            "https://google.com/",
                                          );
                                          if (await canLaunchUrl(url))
                                            await launchUrl(url);
                                        },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Inicio()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(anchoCampo, 40),
                  backgroundColor: ColoresBase.verdeOscuro, // color del botón
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Crear cuenta",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
