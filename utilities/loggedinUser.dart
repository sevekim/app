import 'package: ../model/user.dart';
import 'package: ../services/database_service/database_service.dart';

//Global current logged in user info
UserModel currentLoggedInUser = UserModel();

Future<void> setCurrentlyLoggedInUser(String userID) async {
  currentLoggedInUser = await DatabaseService.getUserWithId(userID);
}
