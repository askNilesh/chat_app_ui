import 'package:chat/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

//  CURRENT USER
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/nilesh.jpg',
);

// OTHER USERS
final User William = User(
  id: 1,
  name: 'William',
  imageUrl: 'assets/images/0.jpg',
);
final User Harper = User(
  id: 2,
  name: 'Harper',
  imageUrl: 'assets/images/1.jpg',
);
final User Ella = User(
  id: 3,
  name: 'Ella',
  imageUrl: 'assets/images/2.jpg',
);
final User Jackson = User(
  id: 4,
  name: 'Jackson',
  imageUrl: 'assets/images/8.jpg',
);
final User Scarlett = User(
  id: 5,
  name: 'Scarlett',
  imageUrl: 'assets/images/4.jpg',
);
final User Lily = User(
  id: 6,
  name: 'Lily',
  imageUrl: 'assets/images/5.jpg',
);
final User Lillian = User(
  id: 7,
  name: 'Lillian',
  imageUrl: 'assets/images/6.jpg',
);
final User Julian = User(
  id: 8,
  name: 'Julian',
  imageUrl: 'assets/images/7.jpg',
);
final User Ellie = User(
  id: 9,
  name: 'Ellie',
  imageUrl: 'assets/images/8.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [Scarlett, Lily, Ellie];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: Harper,
    time: '5:30 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Jackson,
    time: '4:30 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Ella,
    time: '3:30 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Lily,
    time: '2:30 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Lillian,
    time: '1:30 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Scarlett,
    time: '12:30 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: William,
    time: '11:30 AM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: Harper,
    time: '8:35 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '8:33 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Harper,
    time: '8:33 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Harper,
    time: '8:32 PM',
    text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '8:30 PM',
    text: 'I\'m good and what about you',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Harper,
    time: '8:31 PM',
    text: 'Hello How are you?',
    isLiked: false,
    unread: true,
  ),
];
