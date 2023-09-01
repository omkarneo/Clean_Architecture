part of 'getnews_bloc.dart';

sealed class GetnewsState extends Equatable {
  const GetnewsState();

  @override
  List<Object> get props => [];
}

final class GetnewsInitial extends GetnewsState {}

final class LoadedState extends GetnewsState {
  dynamic res;
  LoadedState(this.res);
}
