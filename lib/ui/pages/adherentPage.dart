import 'package:examen_flutter/bloc/adherent_bloc/adherent_bloc.dart';
import 'package:examen_flutter/bloc/adherent_bloc/adherent_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdherentsPage extends StatelessWidget {
  const AdherentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: BlocBuilder<AdherentBloc, AdherentState>(
          builder: (context, state) {
            if (state is AdherentLoded) {
              return ListView.builder(
                  itemCount: state.listAdh.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(),
                        Text(state.listAdh[index].nom.toString()),
                      ],
                    );
                  });
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
        )
    );
  }
}
