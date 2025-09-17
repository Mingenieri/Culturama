import 'package:flutter/material.dart';
import 'package:culturama/recursos/colores.dart';

class CamposRegistro extends StatelessWidget {
  final TextEditingController nombreController;
  final TextEditingController usuarioController;
  final TextEditingController correoController;
  final TextEditingController contrasenaController;
  final double anchoCampo;

  CamposRegistro({
    Key? key,
    required this.nombreController,
    required this.usuarioController,
    required this.correoController,
    required this.contrasenaController,
    required this.anchoCampo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: anchoCampo,
          height: 50,
          child: TextFormField(
            controller: nombreController,
            decoration: InputDecoration(
              labelText: "Nombre completo",
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              prefixIcon: Icon(Icons.person, color: ColoresBase.azulPalido),
            ),
          ),
        ),
        SizedBox(height: 16), // separacion

        SizedBox(
          width: anchoCampo,
          height: 50,
          child: TextFormField(
            controller: nombreController,
            decoration: InputDecoration(
              labelText: "Usuario",
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              prefixIcon: Icon(Icons.person_2, color: ColoresBase.azulPalido),
            ),
          ),
        ),
        SizedBox(height: 16), // separacion

        SizedBox(
          width: anchoCampo,
          height: 50,
          child: TextFormField(
            controller: nombreController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Correo",
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              prefixIcon: Icon(Icons.email, color: ColoresBase.azulPalido),
            ),
          ),
        ),
        SizedBox(height: 16), // separacion

        SizedBox(
          width: anchoCampo,
          height: 50,
          child: TextFormField(
            controller: nombreController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Contraseña",
              labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              prefixIcon: Icon(Icons.lock, color: ColoresBase.azulPalido),
            ),
          ),
        ),
      ],
    );
  }
}
