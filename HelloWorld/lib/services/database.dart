import 'package:HelloWorld/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:HelloWorld/models/brew.dart';

class DataService {
  final String uid;
  DataService({this.uid});

  final CollectionReference brewCollection =
      Firestore.instance.collection('brews');

  Future updateUserData(String sugar, String name, int strength) async {
    return await brewCollection.document(uid).setData({
      "sugar": sugar,
      "name": name,
      "strength": strength,
    });
  }

  //brew list from snapshot
  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Brew(
        name: doc.data['name'] ?? '',
        sugar: doc.data['sugar'] ?? '0',
        strength: doc.data['strength'] ?? 0,
      );
    }).toList();
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      sugar: snapshot.data['sugar'],
      strength: snapshot.data['strength'],
    );
  }

  //get brews stream
  Stream<List<Brew>> get brews {
    return brewCollection.snapshots().map(_brewListFromSnapshot);
  }

  //get user doc stream
  Stream<UserData> get userData {
    return brewCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }
}
