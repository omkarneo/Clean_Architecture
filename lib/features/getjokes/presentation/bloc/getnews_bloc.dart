import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/get_jokes.dart';

part 'getnews_event.dart';
part 'getnews_state.dart';

class GetnewsBloc extends Bloc<GetnewsEvent, GetnewsState> {
  final GetJokesUsecase getjokeuse;
  final GetRandomJoke getrandomjoke;
  GetnewsBloc(this.getjokeuse, this.getrandomjoke) : super(GetnewsInitial()) {
    on<ApihitEvent>((event, emit) async {
      emit(GetnewsInitial());
      var res = await getjokeuse.call("");
      // print(res);
      var random = await getrandomjoke.call("");

      emit(LoadedState(res, random));
    });
  }
}
