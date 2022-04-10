abstract class UserRepositoryInterface {
  late final List<int> userList;

  // Abstract method
  void create();
  List<int> read();
  void update();
  void delete();
}

class UserRepository implements UserRepositoryInterface {
  @override
  late final List<int> userList;

  UserRepository() {
    userList = read();
  }

  @override
  void create() => print('Created');

  @override
  void delete() => print('Updated');

  @override
  List<int> read() => [1, 2, 3, 4, 5];

  @override
  void update() => print('Deleted');
}

class A {
  void methodA() {}
}

class B {
  void methodB() {}
}

class C {
  void methodC() {}
}

class D implements A, B, C {
  @override
  void methodA() {
    // TODO: implement methodA
  }

  @override
  void methodB() {
    // TODO: implement methodB
  }

  @override
  void methodC() {
    // TODO: implement methodC
  }
}

void main() {
  UserRepository userRepository = UserRepository();
  userRepository.create();
  userRepository.read();
  userRepository.update();
  userRepository.delete();
}
