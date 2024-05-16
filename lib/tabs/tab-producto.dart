import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabProductos extends StatelessWidget {
  final String idProducto;
  final String nombreProducto;
  final String categoriaProducto;
  final String precioProducto;
  final String tallasProducto;
  final String colorProducto;

  TabProductos(this.idProducto, this.nombreProducto, this.categoriaProducto,
      this.precioProducto, this.tallasProducto, this.colorProducto,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0f8195),
        title: const Text(
          "Tabla Productos",
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
      DataColumn(label: Text("id_producto")),
      DataColumn(label: Text("nombre_p")),
      DataColumn(label: Text("categoria_p")),
      DataColumn(label: Text("precio_p")),
      DataColumn(label: Text("tallas_p")),
      DataColumn(label: Text("color_p")),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text(idProducto)),
        DataCell(Text(nombreProducto)),
        DataCell(Text(categoriaProducto)),
        DataCell(Text(precioProducto)),
        DataCell(Text(tallasProducto)),
        DataCell(Text(colorProducto)),
      ]),
    ];
  }
}
