import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabInventario extends StatelessWidget {
  final String idArticulo;
  final String idProducto;
  final String idCompras;
  final String cantidadStock;
  final String proveedor;
  final String precioCompra;

  TabInventario(this.idArticulo, this.idProducto, this.idCompras,
      this.cantidadStock, this.proveedor, this.precioCompra,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Tabla Inventario",
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
      DataColumn(label: Text("id_articulo")),
      DataColumn(label: Text("id_producto")),
      DataColumn(label: Text("id_compras")),
      DataColumn(label: Text("cantidad_stock")),
      DataColumn(label: Text("proveedor")),
      DataColumn(label: Text("precio_compra")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idArticulo)),
        DataCell(Text(idProducto)),
        DataCell(Text(idCompras)),
        DataCell(Text(cantidadStock)),
        DataCell(Text(proveedor)),
        DataCell(Text(precioCompra)),
      ]),
    ];
  }
}
