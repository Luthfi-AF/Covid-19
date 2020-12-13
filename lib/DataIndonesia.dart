import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;

class Indonesia {
  String fid;
  String provinsi;
  Double positif;
  Double sembuh;
  String meninggal;

  Indonesia(
      {this.fid, this.sembuh, this.positif, this.meninggal, this.provinsi});

  factory Indonesia.createIndonesia(Map<String, dynamic> object) {
    return Indonesia(
        fid: object['FID'],
        provinsi: object['Provinsi'],
        positif: object['Kasus_Posi'],
        sembuh: object['Kasus_sembuh'],
        meninggal: object['Kasus_Meni']);
  }
  static Future<Indonesia> connectToAPI(String fid) async {
    String apiURL = "https://api.kawalcorona.com/indonesia/provinsi/" + fid;

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return Indonesia.createIndonesia(userData);
  }
}
