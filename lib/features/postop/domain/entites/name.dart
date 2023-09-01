import 'package:equatable/equatable.dart';

class nameEntity extends Equatable {
  final name;
  final password;
  final id;

  const nameEntity({this.name, this.password, this.id});

  @override
  List<Object?> get props {
    return [name, password, id];
  }
}
