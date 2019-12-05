import 'package:flutter/material.dart';


class Ct{

}

criarTabela() {
  return Table(
    defaultColumnWidth: FixedColumnWidth(70.0),
    border: TableBorder(
      horizontalInside: BorderSide(
        color: Colors.grey,
        style: BorderStyle.solid,
        width: 0.5,
      ),
      verticalInside: BorderSide(
        color: Colors.black,
        style: BorderStyle.none,
        width: 0.5,
      ),
    ),
    children: [
      _criarLinhaTable("Mês, Pago, IR ,Valor Líquido"),
      _criarLinhaTable("Jan-19, R\$ 0.00, R\$ 0.00, R\$ 0.00"),
      _criarLinhaTable("Fev-19, R\$ 0.00, R\$ 0.00, R\$ 0.00"),
      _criarLinhaTable("Mar-19, R\$ 0.00, R\$ 0.00, R\$ 0.00"),
    ],
  );
}

_criarLinhaTable(String s) {
  return TableRow(
    //decoration: BoxDecoration(color: Colors.grey),
    children: s.split(',').map((name) {
      return Container(
        alignment: Alignment.topLeft,
        child: Text(
          name,
          style: TextStyle(fontSize: 12.0, color: Colors.grey),
        ),
        padding: EdgeInsets.all(2.0),
      );
    }).toList(),
  );
}