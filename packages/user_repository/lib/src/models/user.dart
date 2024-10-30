import '../entities/user_entity.dart';

class MyUser {
  String userId;
  String email;
  String name;
  String password;
  bool hasActiveCard;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.password,
    required this.hasActiveCard,
  });
  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    password: '',
    hasActiveCard: false,
  );
  MyUserEntity toEntity(){
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      hasActiveCard: hasActiveCard,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      userId: entity.userId,
      email: entity.email,
      name: entity.name,
      hasActiveCard: entity.hasActiveCard, password: '',
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'MyUser: $userId, $email, $name, $password, $hasActiveCard';
  }
}