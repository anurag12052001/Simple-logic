import 'package:simplelogic/screens/model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// CHATS ON HOME SCREEN
List<Message> chat = [
  Message(
    sender: modi,
    time: '5:00 AM',
    text: 'Hum aa rhe hai.',
    unread: true,
  ),
  Message(
    sender: obama,
    time: 'Yesterday',
    text: 'Hey, how are you?',
    unread: true,
  ),
  Message(
    sender: robert,
    time: 'Yesterday',
    text: 'WOW! this soul world is amazing.',
    unread: false,
  ),
  Message(
    sender: lisa,
    time: 'Yesterday',
    text: 'Hii.',
    unread: true,
  ),
  Message(
    sender: sharukh,
    time: '2 days ago',
    text: 'HULK SMASH!!',
    unread: false,
  ),
  Message(
    sender: ambani,
    time: '2 days ago',
    text: 'Bhai deal done.',
    unread: false,
  ),
  Message(
    sender: Sara,
    time: '3 days ago',
    text: 'I\'m hitting gym.',
    unread: false,
  ),
];

//MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: modi,
    time: '5:30 PM',
    text: 'Hey dude! Event dead I\'m the hero.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'We could surely handle this.',
    unread: true,
  ),
  Message(
    sender: obama,
    time: '3:45 PM',
    text: 'Take care of peter. Give him all the protection & his aunt.',
    unread: true,
  ),
  Message(
    sender: robert,
    time: '3:15 PM',
    text: 'I\'m always proud of her and blessed to have both of them.',
    unread: true,
  ),
  Message(
    sender: lisa,
    time: '2:30 PM',
    text:
        'But that spider kid is having some difficulties due his identity reveal by a blog called daily bugle.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text:
        'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make you proud.',
    unread: true,
  ),
  Message(
    sender: Sara,
    time: '2:30 PM',
    text: 'Pepper & Morgan is fine.',
    unread: true,
  ),
];
