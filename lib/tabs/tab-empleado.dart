import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabEmpleados extends StatelessWidget {
  final String idEmpleado;
  final String nombreEmpleado;
  final String apellidoEmpleado;
  final String puestoEmpleado;
  final String fechaContratacion;
  final String salarioEmpleado;

  TabEmpleados(this.idEmpleado, this.nombreEmpleado, this.apellidoEmpleado,
      this.puestoEmpleado, this.fechaContratacion, this.salarioEmpleado,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Tabla Empleados",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: DataTable(
        columnSpacing: 30.0,
        columns: _createColumns(),
        rows: _createRows(),
      ),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text("id_empleado")),
      DataColumn(label: Text("nombre_e")),
      DataColumn(label: Text("apellido_e")),
      DataColumn(label: Text("puesto_e")),
      DataColumn(label: Text("fecha_contr")),
      DataColumn(label: Text("salario_e")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idEmpleado)),
        DataCell(Text(nombreEmpleado)),
        DataCell(Text(apellidoEmpleado)),
        DataCell(Text(puestoEmpleado)),
        DataCell(Text(fechaContratacion)),
        DataCell(Text(salarioEmpleado)),
      ]),
    ];
  }
}
