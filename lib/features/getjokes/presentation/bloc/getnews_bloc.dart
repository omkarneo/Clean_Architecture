import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/get_jokes.dart';

part 'getnews_event.dart';
part 'getnews_state.dart';

class GetnewsBloc extends Bloc<GetnewsEvent, GetnewsState> {
  final GetJokesUsecase getjokeuse;
  GetnewsBloc(this.getjokeuse) : super(GetnewsInitial()) {
    on<ApihitEvent>((event, emit) async {
      emit(GetnewsInitial());
      var res = await getjokeuse.call("");
      // print(res);
      emit(LoadedState(res));
    });
  }
}
