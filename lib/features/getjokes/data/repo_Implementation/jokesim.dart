import 'package:clean_architecture/features/getjokes/domain/repository/jokesab.dart';
import 'package:dio/dio.dart';

import '../../domain/entity/jokesmodel.dart';

class JokesIm extends Jokesab {
  final dio = Dio();

  @override
  Future<List<Jokes>> getjokes() async {
    List<Jokes> senddata = [];
    final response =
        await dio.get('https://official-joke-api.appspot.com/random_ten');
    for (int i = 0; i < response.data.length; i++) {
      var obj = Jokes.fromJson(response.data[i]);
      senddata.add(obj);
    }

    return senddata;
  }

  @override
  Future<Map> getrandomjoke() async {
    final response =
        await dio.get('https://official-joke-api.appspot.com/random_ten');

    print(response.data[0].runtimeType);
    return response.data[0];
  }
}
