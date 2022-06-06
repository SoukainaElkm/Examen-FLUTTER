import 'package:examen_flutter/models/livre_model.dart';

class LivreRepository{
  List<Livre> listLivres=[
    Livre(1, "cgfvhbkjnll", "sun", "soukaina", DateTime(2015), 10, 20),
    Livre(2, "vgbhnjk,", "moon", "salma", DateTime(2020), 50, 30),
    Livre(3, "cfgvhbkjnk,", "it ends with us", "colleen hoover", DateTime(2017), 100, 20),
    Livre(4, "cgfvhbjkn", "titre", "auteur", DateTime(2010), 30, 10)
  ];

  @override
  Future<List<Livre>> allLivres() async{
    await Future.delayed(Duration(seconds: 1));
    return listLivres;
  }

  @override
  Future<void> deleteLivre(int id_livre) async {
    await Future.delayed(const Duration(seconds: 1));
    return listLivres.removeWhere((element) => element.id_livre==id_livre);
  }

  @override
  Future<Livre> findLivreByKeyword(String keyword) async{
    await Future.delayed(Duration(seconds: 1));
    return listLivres.firstWhere((element) => element.titre.startsWith(keyword));
  }

}