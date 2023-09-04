part of 'getnews_bloc.dart';

sealed class GetnewsState extends Equatable {
  const GetnewsState();

  @override
  List<Object> get props => [];
}

final class GetnewsInitial extends GetnewsState {}

// ignore: must_be_immutable
final class LoadedState extends GetnewsState {
  dynamic res;
  dynamic randomjoke;
  LoadedState(this.res, this.randomjoke);
}
