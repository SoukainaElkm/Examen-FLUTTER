
import 'package:examen_flutter/models/adherent_model.dart';


class AdherentRepository {
  List<Adherent> listAderent = [
    Adherent(1, "elkamouni", "soukaina", "soukaina@gmail.com", "1234"),
    Adherent(2, "khadidi", "salma", "salma@gmail.com", "1234"),
    Adherent(3, "elkamouni", "wassim", "wassim@gmail.com", "1234"),
    Adherent(4, "nom", "prenom", "email", "tel")
  ];

  @override
  Future<List<Adherent>> allAdherents() async {
    await Future.delayed(Duration(seconds: 1));
    return listAderent;
  }

  @override
  Future<void> deleteAdherent(int id_adherent) async {
    await Future.delayed(Duration(seconds: 1));
    return listAderent.removeWhere((element) => element.id_adherent == id_adherent);
  }
}
