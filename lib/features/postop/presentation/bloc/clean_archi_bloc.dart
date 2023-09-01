import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/usecases/get_response.dart';

part 'clean_archi_event.dart';
part 'clean_archi_state.dart';

class CleanArchiBloc extends Bloc<CleanArchiEvent, CleanArchiState> {
  final GetResponse getResponse;
  CleanArchiBloc(this.getResponse) : super(CleanArchiInitial()) {
    on<SubmitEvent>((event, emit) async {
      var res = await getResponse
          .call({"name": event.name, "password": event.password});
      // print(res);
      emit(SubmitedState(res));
    });
  }
}
