import 'package:empty/cat/bemen3/dam/m8/uf2/p3b/serveis/model/car_model.dart';
import 'package:http/http.dart' as http;
// import 'package:rentcar/model/brand_model.dart';
// import 'package:rentcar/model/car_model.dart';
// import 'package:rentcar/utils/const_app.dart';

class CarHttpService {
  /*
  Obtenir la llista de cotxes
  */
  Future<List<CarsModel>> getCars() async {
    var uri = Uri.parse("https://car-data.p.rapidapi.com/cars?limit=10&page=0");

    var response = await http.get(uri, headers: {
      "x-rapidapi-host": "car-data.p.rapidapi.com",
      "x-rapidapi-key": "d0642f8661msh0b1d786e4f15744p105b3ejsn93fe54013ec8"
    });

    if (response.statusCode == 200) {
      return carsModelFromJson(response.body);
    } else {
      throw ("Error al obtener la lista de coches: ${response.statusCode}");
    }
  }

  // Future<List<String>> getBrand() async {
  //   var uri = Uri.parse(_serverUrl + endPointBrands);
  //   var response = await http.get(uri ,
  //       headers: {
  //         headerKey: _headerKey,
  //         headerHost : _headerHost
  //       });

  //   if(response.statusCode == 200){
  //     return brandModelFromJson(response.body);
  //   }else{
  //     throw(messageErrorBrandApi);
  //   }
  // }
}
