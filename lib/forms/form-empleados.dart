import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:cisneros0453/tabs/tab-empleado.dart';

// ignore: must_be_immutable
class FormEmpleados extends StatelessWidget {
  FormEmpleados({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idEmpleadoController = TextEditingController(text: "");
    final nombreEmpleadoController = TextEditingController(text: "");
    final apellidoEmpleadoController = TextEditingController(text: "");
    final puestoEmpleadoController = TextEditingController(text: "");
    final fechaContrController = TextEditingController(text: "");
    final salarioEmpleadoController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Formulario Empleados",
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
                    controller: idEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "id_empleado",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: nombreEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "nombre_e",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: apellidoEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "apellido_e",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: puestoEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "puesto_e",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: fechaContrController,
                    decoration: InputDecoration(
                      hintText: "fecha_contr",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: salarioEmpleadoController,
                    decoration: InputDecoration(
                      hintText: "salario_e",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabEmpleados(
                            idEmpleadoController.text,
                            nombreEmpleadoController.text,
                            apellidoEmpleadoController.text,
                            puestoEmpleadoController.text,
                            fechaContrController.text,
                            salarioEmpleadoController.text,
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
                      "Tabla Empleados",
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
