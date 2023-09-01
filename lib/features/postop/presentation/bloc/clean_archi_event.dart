part of 'clean_archi_bloc.dart';

sealed class CleanArchiEvent extends Equatable {
  const CleanArchiEvent();

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class SubmitEvent extends CleanArchiEvent {
  dynamic name;
  dynamic password;
  SubmitEvent({this.name, this.password});
  @override
  List<Object> get props => [name, password];
}
