
abstract class AdherentEvent {}

class AllAdherent extends AdherentEvent{}

class RemoveAdherent extends AdherentEvent{
  int id_adherent;
  RemoveAdherent({required this.id_adherent});
}
