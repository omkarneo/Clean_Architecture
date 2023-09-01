import 'package:clean_architecture/features/getjokes/data/repo_Implementation/jokesim.dart';
import 'package:clean_architecture/features/getjokes/domain/repository/jokesab.dart';
import 'package:get_it/get_it.dart';

import 'features/getjokes/domain/usecases/get_jokes.dart';
import 'features/getjokes/presentation/bloc/getnews_bloc.dart';
import 'features/postop/data/repository/repiim.dart';
import 'features/postop/domain/repository/namerepo.dart';
import 'features/postop/domain/usecases/get_response.dart';
import 'features/postop/presentation/bloc/clean_archi_bloc.dart';
// import '../features/daily_news/presentation/bloc/clean_archi_bloc.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerFactory<CleanArchiBloc>(
      () => CleanArchiBloc(GetResponse(getpo: locator<NameRepa>())));

  locator.registerLazySingleton<NameRepa>(() => NameRepaImpl());

  locator.registerFactory<GetnewsBloc>(
      () => GetnewsBloc(GetJokesUsecase(joke: locator<Jokesab>())));

  locator.registerLazySingleton<Jokesab>(() => JokesIm());
}
