import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:cisneros0453/tabs/tab-pedido.dart';

// ignore: must_be_immutable
class FormPedidos extends StatelessWidget {
  FormPedidos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idPedidoController = TextEditingController(text: "");
    final fechaPedidoController = TextEditingController(text: "");
    final idClienteController = TextEditingController(text: "");
    final estadoPedidoController = TextEditingController(text: "");
    final metodoPagoController = TextEditingController(text: "");
    final totalPedidoController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Formulario Pedidos",
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
                    controller: idPedidoController,
                    decoration: InputDecoration(
                      hintText: "id_pedido",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: fechaPedidoController,
                    decoration: InputDecoration(
                      hintText: "fecha_pedido",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
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
                    controller: estadoPedidoController,
                    decoration: InputDecoration(
                      hintText: "estado_del_pedido",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: metodoPagoController,
                    decoration: InputDecoration(
                      hintText: "metodo_pago",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  TextField(
                    controller: totalPedidoController,
                    decoration: InputDecoration(
                      hintText: "total_pedido",
                      // Añadir decoraciones adicionales según sea necesario
                    ),
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabPedido(
                            idPedidoController.text,
                            fechaPedidoController.text,
                            idClienteController.text,
                            estadoPedidoController.text,
                            metodoPagoController.text,
                            totalPedidoController.text,
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
                      "Tabla Pedidos",
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
