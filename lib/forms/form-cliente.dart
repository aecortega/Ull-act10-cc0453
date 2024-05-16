import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:cisneros0453/tabs/tab-cliente.dart';

class FormCliente extends StatelessWidget {
  FormCliente({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idClienteController = TextEditingController(text: "");
    final nombreClienteController = TextEditingController(text: "");
    final apellidoClienteController = TextEditingController(text: "");
    final direccionClienteController = TextEditingController(text: "");
    final ciudadClienteController = TextEditingController(text: "");
    final correoClienteController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Formulario Usuarios",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Gap(20),
                  TextField(
                    controller: idClienteController,
                    decoration: InputDecoration(
                      hintText: "id_cliente",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: nombreClienteController,
                    decoration: InputDecoration(
                      hintText: "nombre_c",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: apellidoClienteController,
                    decoration: InputDecoration(
                      hintText: "apellido_c",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: direccionClienteController,
                    decoration: InputDecoration(
                      hintText: "direccion_c",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: ciudadClienteController,
                    decoration: InputDecoration(
                      hintText: "ciudad_c",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: correoClienteController,
                    decoration: InputDecoration(
                      hintText: "correo_c",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabCliente(
                            idClienteController.text,
                            nombreClienteController.text,
                            apellidoClienteController.text,
                            direccionClienteController.text,
                            ciudadClienteController.text,
                            correoClienteController.text,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0f8195),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    child: const Text(
                      "Tabla Usuarios",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
