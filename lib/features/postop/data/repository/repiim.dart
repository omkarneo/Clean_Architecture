import 'package:clean_architecture/features/postop/domain/repository/namerepo.dart';
import 'package:dio/dio.dart';

class NameRepaImpl extends NameRepa {
  // final name;
  // final password;
  // GetResponseImpl(this.name, this.password);
  @override
  Future getresponse(params) async {
    try {
      final dio = Dio();
      var res = await dio.post("https://jsonplaceholder.typicode.com/posts",
          data: params);

      return res.data;
    } catch (err) {
      // print(err);
    }
  }
}
