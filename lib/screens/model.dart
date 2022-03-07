class User {
  final int id;
  final String name;
  final String image;
  final bool isOnline;

  // var image;

  User({
    required this.id,
    required this.name,
    required this.image,
    required this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Modi',
  image: 'assets/modi.jpg',
  isOnline: true,
);

// USERS
final User modi = User(
  id: 1,
  name: 'Modi',
  image: 'assets/modi.jpg',
  isOnline: true,
);
final User obama = User(
  id: 2,
  name: 'obama',
  image: 'assets/obama.jpg',
  isOnline: true,
);
final User robert = User(
  id: 3,
  name: 'Robert',
  image: 'assets/Robert.jpg',
  isOnline: false,
);
final User lisa = User(
  id: 4,
  name: 'Lisa',
  image: 'assets/girl2.jpg',
  isOnline: false,
);
final User sharukh = User(
  id: 5,
  name: 'sharukh',
  image: 'assets/sharukh.jpg',
  isOnline: true,
);
final User ambani = User(
  id: 6,
  name: 'Ambani',
  image: 'assets/ambani.jpg',
  isOnline: false,
);
final User Sara = User(
  id: 6,
  name: 'Sara',
  image: 'assets/girl.jpg',
  isOnline: false,
);
