import 'package:clean_architecture/core/usecases/basicusescaes.dart';

import '../repository/namerepo.dart';

class GetResponse extends BaseUseCase {
  final NameRepa getpo;
  GetResponse({required this.getpo});

  @override
  Future call(params) async {
    // print(params.runtimeType);
    return await getpo.getresponse(params);
  }

  // @override
  // Future getpostress(name, password) async {}
}
