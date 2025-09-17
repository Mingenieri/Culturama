import 'package:flutter/material.dart';
import 'package:culturama/recursos/colores.dart';

class CamposLogin extends StatelessWidget {
  final TextEditingController correoController;
  final TextEditingController contrasenaController;
  final double anchoCampo;

  CamposLogin({
    Key? key,
    required this.correoController,
    required this.contrasenaController,
    required this.anchoCampo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          width: anchoCampo,
          child: TextFormField(
            controller: correoController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Correo electronico",
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              prefixIcon: Icon(Icons.email, color: ColoresBase.azulPalido),
            ),
          ),
        ),

        SizedBox(height: 16), // separacion

        SizedBox(
          width: anchoCampo,
          child: TextFormField(
            controller: contrasenaController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Contraseña",
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              prefixIcon: Icon(Icons.lock, color: ColoresBase.azulPalido),
            ),
          ),
        ),
      ],
    );
  }
}
