import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:xapptor_api_key/initial_values.dart';
import 'package:xapptor_db/xapptor_db.dart';

Future<String> gak({
  required String n,
  required String o,
}) async {
  DocumentSnapshot o_m = await XapptorDB.instance.collection("metadata").doc(o).get();
  String ak = "";

  if (o_m.data() != null) {
    Map<String, dynamic> o_d = o_m.data() as Map<String, dynamic>;

    String p_n = UniversalPlatform.operatingSystem.toString();

    ak = o_d["keys"][n][p_n];

    if (d_m_f_au != null) {
      ak = d_m_f_au!(
        m: ak,
        k: e_k_au,
      );
    }
  }
  return ak;
}
