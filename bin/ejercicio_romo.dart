void main() {
  almacen();
}

void almacen() {
  dynamic cedesLim = 5;
  List<dynamic> semana = [
    "Lunes",
    "Martes",
    "Miercoles",
    "Jueves",
    "Viernes",
    "Sabado"
  ];
  List<Map<String, dynamic>> informe = [];
  for (int i = 0; i < cedesLim; i++) {
    Map<String, dynamic> cedes = {
      "Cede": i,
      "Ventas": [2000, 2300, 6700, 5700, 1000, 9000],
      "Admin": "RoMo",
      "IVA": [0.19, 0.19, 0.19, 0.19, 0.19, 0.19],
    };
    informe.addAll([cedes]);
    print("|***************************************|");
    print("|                                       |");
    print("|          INFORME CEDE # 0${i + 1}            |");
    print("|                                       |");
    print("|***************************************|");
    print("|_______________________________________|");
    print("|                                       |");
    print("|Administrador: ${informe[i]["Admin"]}                    |");
    print("|                                       |");
    for (int j = 0; j < cedes["Ventas"].length; j++) {
      print("""|${semana[j]} -> Ventas: ${informe[i]["Ventas"][j]} 
|IVA: ${(informe[i]["Ventas"][j]) * (informe[i]["IVA"][j])}
|Ganancias: ${(informe[i]["Ventas"][j]) * (informe[i]["IVA"][j]) - (informe[i]["Ventas"][j])}
|***************************************|""");
    }
  }
}
//By:Daniel RoMo V1.0