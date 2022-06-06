import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:examen_flutter/bloc/adherent_bloc/adherent_state.dart';
import 'package:examen_flutter/models/adherent_model.dart';
import 'package:examen_flutter/repositories/adherent_repository.dart';

import 'adherent_event.dart';


class AdherentBloc extends Bloc<AdherentEvent, AdherentState> {
  AdherentRepository adherentRepository;
  AdherentBloc({required this.adherentRepository}) : super(AdherentInitial()) {
    on<AllAdherent>((event, emit) async{
      emit(AdherentInitial());
      List<Adherent> ls =await adherentRepository.allAdherents();
      emit(AdherentLoded(listAdh: ls));
    });
  }
}
