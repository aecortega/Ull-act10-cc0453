import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabPedido extends StatelessWidget {
  final String idPedido;
  final String fechaPedido;
  final String idCliente;
  final String estadoPedido;
  final String metodoPago;
  final String totalPedido;

  TabPedido(this.idPedido, this.fechaPedido, this.idCliente, this.estadoPedido,
      this.metodoPago, this.totalPedido,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Tabla Pedidos",
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
      DataColumn(label: Text("id_pedido")),
      DataColumn(label: Text("fecha_pedido")),
      DataColumn(label: Text("id_cliente")),
      DataColumn(label: Text("estado_del_pedido")),
      DataColumn(label: Text("metodo_pago")),
      DataColumn(label: Text("total_pedido")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idPedido)),
        DataCell(Text(fechaPedido)),
        DataCell(Text(idCliente)),
        DataCell(Text(estadoPedido)),
        DataCell(Text(metodoPago)),
        DataCell(Text(totalPedido)),
      ]),
    ];
  }
}
