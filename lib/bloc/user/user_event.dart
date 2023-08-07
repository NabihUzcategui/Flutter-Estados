part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final Usuario user;

  ActivateUser(this.user);
}

class ChangeUserAge extends UserEvent {
  final int age;

  ChangeUserAge(this.age);
}

class AddUserProfesion extends UserEvent {
  final String profession;

  AddUserProfesion(this.profession);
}

class DeleteUser extends UserEvent {}