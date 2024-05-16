import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabCliente extends StatelessWidget {
  final String idCliente;
  final String nombreCliente;
  final String apellidoCliente;
  final String direccionCliente;
  final String ciudadCliente;
  final String correoCliente;

  TabCliente(this.idCliente, this.nombreCliente, this.apellidoCliente,
      this.direccionCliente, this.ciudadCliente, this.correoCliente,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Tabla Clientes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: _createColumns(),
          rows: _createRows(),
        ),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text("id_cliente")),
      DataColumn(label: Text("nombre_c")),
      DataColumn(label: Text("apellido_c")),
      DataColumn(label: Text("direccion_c")),
      DataColumn(label: Text("ciudad_c")),
      DataColumn(label: Text("correo_c")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idCliente)),
        DataCell(Text(nombreCliente)),
        DataCell(Text(apellidoCliente)),
        DataCell(Text(direccionCliente)),
        DataCell(Text(ciudadCliente)),
        DataCell(Text(correoCliente)),
      ]),
    ];
  }
}
