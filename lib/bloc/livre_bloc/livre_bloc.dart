import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:examen_flutter/bloc/livre_bloc/livre_event.dart';
import 'package:examen_flutter/bloc/livre_bloc/livre_state.dart';

import '../../models/livre_model.dart';
import '../../repositories/livre_repository.dart';


class LivreBloc extends Bloc<LivreEvent, LivreState> {
  LivreRepository livreRepository;

  LivreBloc({required this.livreRepository}) : super(ILivre()) {
    on<AllLivre>((event, emit) async {
      emit(ILivre());
      List<Livre> ls = await livreRepository.allLivres();
      emit(LivreLoded(list: ls));
    });
  }
}
