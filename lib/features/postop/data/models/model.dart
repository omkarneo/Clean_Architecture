import 'package:equatable/equatable.dart';

class namModel extends Equatable {
  final name;
  final password;
  final id;

  const namModel({this.name, this.password, this.id});

  @override
  List<Object?> get props {
    return [name, password, id];
  }
}
