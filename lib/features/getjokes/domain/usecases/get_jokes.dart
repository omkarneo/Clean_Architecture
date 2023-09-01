import 'package:clean_architecture/core/usecases/basicusescaes.dart';
import 'package:clean_architecture/features/getjokes/domain/repository/jokesab.dart';

class GetJokesUsecase implements BaseUseCase {
  final Jokesab joke;
  GetJokesUsecase({required this.joke});
  @override
  call(params) async {
    return await joke.getjokes();
  }
}
