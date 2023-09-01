part of 'getnews_bloc.dart';

sealed class GetnewsEvent extends Equatable {
  const GetnewsEvent();

  @override
  List<Object> get props => [];
}

class ApihitEvent extends GetnewsEvent {}
