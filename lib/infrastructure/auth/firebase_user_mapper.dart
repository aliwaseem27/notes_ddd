import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes_ddd/domain/auth/user.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  CurrentUser toDomain(){
    return CurrentUser(id: UniqueId.fromUniqueString(uid));
  }
}