import 'package:flutter/material.dart';
import 'package:culturama/recursos/colores.dart';
import 'package:culturama/widgets/campos_login.dart';
import 'package:culturama/ventanas/inicio.dart';

class InicioSesion extends StatefulWidget {
  const InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  final correoController = TextEditingController();
  final contrasenaController = TextEditingController();

  bool _recordarme = false;

  @override
  void dispose() {
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
            color: ColoresBase.azul, // color del icono
            size: 40, // tamaño del icono en píxeles
          ),
        ),
        title: Text(
          "Inicio de sesion",
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
              const SizedBox(height: 30), //separacion
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

              Text(
                "Te damos la bienvenida",
                style: TextStyle(
                  color: ColoresBase.rosaOscuro,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),

              Text(
                "Ingresa a tu cuenta para continuar",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),

              const SizedBox(height: 30), // separacion

              CamposLogin(
                correoController: correoController,
                contrasenaController: contrasenaController,
                anchoCampo: anchoCampo,
              ),

              SizedBox(
                width: anchoCampo,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _recordarme,
                          onChanged: (bool? valor) {
                            setState(() {
                              _recordarme = valor ?? false;
                            });
                          },
                          activeColor: ColoresBase.verde,
                        ),
                        Text(
                          "Recordarme",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        //falta su funcion
                      },
                      child: Text(
                        "¿Olvidaste tu contraseña?",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: ColoresBase.verde,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30), // separacion

              SizedBox(
                width: anchoCampo,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Inicio()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(anchoCampo, 40),
                    backgroundColor: ColoresBase.azul, // color del botón
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Iniciar sesion",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
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
