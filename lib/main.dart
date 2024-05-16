import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:cisneros0453/forms/form-cliente.dart';
import 'package:cisneros0453/forms/form-producto.dart';
import 'package:cisneros0453/forms/form-pedidos.dart';
import 'package:cisneros0453/forms/form-empleados.dart';
import 'package:cisneros0453/forms/form-inventario.dart';

import 'package:cisneros0453/tabs/tab-cliente.dart';
import 'package:cisneros0453/tabs/tab-producto.dart';
import 'package:cisneros0453/tabs/tab-pedido.dart';
import 'package:cisneros0453/tabs/tab-empleado.dart';
import 'package:cisneros0453/tabs/tab-inventario.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jesús Cano 0440',
      theme: ThemeData(
        primarySwatch: Colors.pink, // Cambié el color primario a pink
        scaffoldBackgroundColor: const Color(0xfff0f0f0), // Color de fondo
      ),
      home: const MyHomePage(title: 'Tienda de ropa Cisneros 0453'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
            0xff00bcd4), // Color más brillante para la barra de navegación
        title: Text(
          title,
          style: const TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Formularios",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)), // Texto en blanco
                      ),
                      Gap(20),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormProductos()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                              0xff0f8195), // Color más brillante para el botón
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        child: const Text(
                          "Form Productos",
                          style: TextStyle(
                              color:
                                  Colors.white), // Añadí color blanco al texto
                        ),
                      ),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormCliente()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                              0xff0f8195), // Color más brillante para el botón
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        child: const Text(
                          "Form Clientes",
                          style: TextStyle(
                              color:
                                  Colors.white), // Añadí color blanco al texto
                        ),
                      ),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormPedidos()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                              0xff0f8195), // Color más brillante para el botón
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        child: const Text(
                          "Form Pedidos",
                          style: TextStyle(
                              color:
                                  Colors.white), // Añadí color blanco al texto
                        ),
                      ),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormEmpleados()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                              0xff0f8195), // Color más brillante para el botón
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        child: const Text(
                          "Form Empleados",
                          style: TextStyle(
                              color:
                                  Colors.white), // Añadí color blanco al texto
                        ),
                      ),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FormInventario()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                              0xff0f8195), // Color más brillante para el botón
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        child: const Text(
                          "Form Inventario",
                          style: TextStyle(
                              color:
                                  Colors.white), // Añadí color blanco al texto
                        ),
                      ),
                      const Gap(10),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tablas",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)), // Texto en blanco
                      ),
                      Gap(20),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TabProductos("", "", "", "", "", "")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0f8195),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        child: const Text("Tabla Productos",
                            style: TextStyle(color: Colors.white)),
                      ),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TabCliente("", "", "", "", "", "")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0f8195),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        child: const Text("Tabla Clientes",
                            style: TextStyle(color: Colors.white)),
                      ),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TabPedido("", "", "", "", "", "")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0f8195),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        child: const Text("Tabla Pedidios",
                            style: TextStyle(color: Colors.white)),
                      ),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TabEmpleados("", "", "", "", "", "")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0f8195),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        child: const Text("Tabla Empleados",
                            style: TextStyle(color: Colors.white)),
                      ),
                      const Gap(10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TabInventario("", "", "", "", "", "")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0f8195),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        child: const Text("Tabla Inventario",
                            style: TextStyle(color: Colors.white)),
                      ),
                      const Gap(10),
                    ],
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
