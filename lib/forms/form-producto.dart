import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:cisneros0453/tabs/tab-producto.dart';

// ignore: must_be_immutable
class FormProductos extends StatelessWidget {
  FormProductos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idProductoController = TextEditingController(text: "");
    final nombreProductoController = TextEditingController(text: "");
    final categoriaProductoController = TextEditingController(text: "");
    final precioProductoController = TextEditingController(text: "");
    final tallasProductoController = TextEditingController(text: "");
    final colorProductoController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Formulario Productos",
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
                    controller: idProductoController,
                    decoration: InputDecoration(
                      hintText: "id_producto",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: nombreProductoController,
                    decoration: InputDecoration(
                      hintText: "nombre_p",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: categoriaProductoController,
                    decoration: InputDecoration(
                      hintText: "categoria_p",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: precioProductoController,
                    decoration: InputDecoration(
                      hintText: "precio_p",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: tallasProductoController,
                    decoration: InputDecoration(
                      hintText: "tallas_p",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: colorProductoController,
                    decoration: InputDecoration(
                      hintText: "color_p",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabProductos(
                            idProductoController.text,
                            nombreProductoController.text,
                            categoriaProductoController.text,
                            precioProductoController.text,
                            tallasProductoController.text,
                            colorProductoController.text,
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
                      "Tabla Productos",
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
