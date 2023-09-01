part of 'clean_archi_bloc.dart';

sealed class CleanArchiState extends Equatable {
  const CleanArchiState();

  @override
  List<Object> get props => [];
}

final class CleanArchiInitial extends CleanArchiState {}

final class SubmitedState extends CleanArchiState {
  final res;
  SubmitedState(this.res);
  @override
  List<Object> get props => [res];
}
