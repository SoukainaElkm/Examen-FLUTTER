
import 'package:examen_flutter/models/livre_model.dart';

abstract class LivreState {}

class ILivre extends LivreState {}

class LivreLoded extends LivreState{
  List<Livre> list;
  LivreLoded({required this.list});
}

class LivreError extends LivreState{
  String error;
  LivreError({required this.error});
}
