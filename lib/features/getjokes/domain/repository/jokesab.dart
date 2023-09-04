import '../entity/jokesmodel.dart';

abstract class Jokesab {
  Future<List<Jokes>> getjokes();
  Future<Map> getrandomjoke();
}
