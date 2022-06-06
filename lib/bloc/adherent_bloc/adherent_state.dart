import 'package:examen_flutter/models/adherent_model.dart';

abstract class AdherentState {}

class AdherentInitial extends AdherentState {}

class AdherentLoded extends AdherentState{
  List<Adherent> listAdh;
  AdherentLoded({required this.listAdh});
}

class AdherentError extends AdherentState{
  String error;
  AdherentError({required this.error});
}