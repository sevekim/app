import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String uid, email, displayName, photoURL, userDescription;
  int followerCount;

  UserModel({
    this.uid,
    this.email,
    this.displayName,
    this.photoURL,
    this.followerCount,
    this.userDescription,
  });

  factory UserModel.fromDoc(DocumentSnapshot doc) {
    return UserModel(
      uid: doc.documentID,
      displayName: doc['name'] ?? 'No Name',
      photoURL: doc['profileimageURL'],
      email: doc['email'],
      followerCount: doc['followerCount'],
      userDescription: doc['userDescription'],
    );
  }
}
