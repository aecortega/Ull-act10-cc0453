import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:cisneros0453/tabs/tab-inventario.dart';

// ignore: must_be_immutable
class FormInventario extends StatelessWidget {
  FormInventario({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idArticuloController = TextEditingController(text: "");
    final idProductoController = TextEditingController(text: "");
    final idComprasController = TextEditingController(text: "");
    final cantidadStockController = TextEditingController(text: "");
    final proveedorController = TextEditingController(text: "");
    final precioCompraController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Formulario Inventario",
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
                    controller: idArticuloController,
                    decoration: InputDecoration(
                      hintText: "id_articulo",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
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
                    controller: idComprasController,
                    decoration: InputDecoration(
                      hintText: "id_compras",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: cantidadStockController,
                    decoration: InputDecoration(
                      hintText: "cantidad_stock",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: proveedorController,
                    decoration: InputDecoration(
                      hintText: "proveedor",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: precioCompraController,
                    decoration: InputDecoration(
                      hintText: "precio_compra",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabInventario(
                            idArticuloController.text,
                            idProductoController.text,
                            idComprasController.text,
                            cantidadStockController.text,
                            proveedorController.text,
                            precioCompraController.text,
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
                      "Tabla Inventario",
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
