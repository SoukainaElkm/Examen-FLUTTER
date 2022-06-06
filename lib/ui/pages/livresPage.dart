import 'package:examen_flutter/bloc/livre_bloc/livre_bloc.dart';
import 'package:examen_flutter/bloc/livre_bloc/livre_state.dart';
import 'package:examen_flutter/models/livre_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';


class LivresPage extends StatefulWidget {
  const LivresPage({Key? key}) : super(key: key);

  @override
  State<LivresPage> createState() => _LivresPageState();
}

class _LivresPageState extends State<LivresPage> {

  List<Livre> listLivres = [];

  void deleteLivre(keyword){
    listLivres.forEach((e) {
      if(e.titre.contains(keyword)){
        listLivres.remove(e);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: BlocBuilder<LivreBloc, LivreState>(
            builder: (context, state) {
              if (state is LivreLoded) {
                return ListView.builder(
                    itemCount: state.list.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(height: 10),
                              Text(state.list[index].titre.toString()),

                              SizedBox(height: 10),
                              Text(state.list[index].auteur.toString()),

                              SizedBox(height: 10),
                              Text(state.list[index].anne_publication.toString()),

                              SizedBox(height: 10),
                              Text(state.list[index].prix.toString()),

                              MaterialButton(
                                  color: Colors.blueAccent,
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      //deleteItem();
                                    });
                                  }
                              ),
                            ]),
                        ],
                      );
                    });
                } else{
                  return CircularProgressIndicator();
              }
            },
          ),
        )
    );
  }
}
