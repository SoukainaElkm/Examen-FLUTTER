
abstract class LivreEvent {}

class AllLivre extends LivreEvent{}

class RemoveLivre extends LivreEvent{
  int id_livre;

  RemoveLivre({required this.id_livre});
}

class FindLivreByKeyword extends LivreEvent{
  String keyword;
  FindLivreByKeyword({required this.keyword});
}