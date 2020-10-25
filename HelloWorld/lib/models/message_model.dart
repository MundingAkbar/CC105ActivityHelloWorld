import 'user_model.dart';

class Message {
  Message({this.sender, this.time, this.text, this.isLiked, this.unread});

  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;
}

final currentUser = User(
  id: 0,
  name: "Akbar",
  imageUrl: "assets/image/akbar.png",
);

final iresh = User(
  id: 1,
  name: "Iresh",
  imageUrl: "assets/image/iresh.jpg",
);

final dominic = User(
  id: 2,
  name: "dominic",
  imageUrl: "assets/image/dominic.jpg",
);
final deil = User(
  id: 3,
  name: "deil",
  imageUrl: "assets/image/deil.jpg",
);
final shariefa = User(
  id: 4,
  name: "shariefa",
  imageUrl: "assets/image/shariefa.jpg",
);
final james = User(
  id: 5,
  name: "james",
  imageUrl: "assets/image/james.jpg",
);

final edmond = User(
  id: 6,
  name: "edmond",
  imageUrl: "assets/image/edmond.jpg",
);
final jake = User(
  id: 7,
  name: "jake",
  imageUrl: "assets/image/jake.jpg",
);

//favorites user
List<User> favorites = [iresh, dominic, jake, james, edmond];

//example chats on home screen
List<Message> chats = [
  Message(
    sender: iresh,
    time: "3:30 PM",
    text: "Bar kamusta? may meeting tayo mamaya",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: dominic,
    time: "1:30 PM",
    text: "Doy may meeting daw mamaya",
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: jake,
    time: "9:30 AM",
    text: "Boy wala daw klase bukas",
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: shariefa,
    time: "8:30PM",
    text: "Bar paano yun sa chuchuchu..",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: edmond,
    time: "3:30 AM",
    text: "Uso matulog bar hahahaha",
    isLiked: true,
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: iresh,
    time: "3:37 AM",
    text: "si red nga hahahaha..",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: "3:35 AM",
    text: "Baka si red, nagvent kasi kanina hahahaha..",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: iresh,
    time: "3:33 PM",
    text: "Sino ba impostor may idea ka?",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: iresh,
    time: "3:32 PM",
    text: "Tapos gawin natin yung mga task..",
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: "3:31 PM",
    text: "Sige magonline lang ako",
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: iresh,
    time: "3:30 PM",
    text: "Bar kamusta? may meeting tayo mamaya",
    isLiked: false,
    unread: true,
  ),
];
