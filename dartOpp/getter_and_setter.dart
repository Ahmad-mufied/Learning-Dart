class Student {
  String? stdName;
  String? branch;
  int? stdAge;

  // getter method
  String? get std_name {
    return stdName;
  }

  // Setter method
  void set std_name(String? name) {
    this.stdName = name;
  }

  void set std_age(int? age) {
    if (age! < 20) {
      print('Student age should be greater than 20');
    } else {
      this.stdAge = age;
    }
  }

  int? get std_age {
    return stdAge;
  }

  void set std_branch(String? branch_name) {
    this.branch = branch_name;
  }

  String? get std_branch {
    return branch;
  }
}

void main() {
  Student std = Student();
  std.std_name = 'Nasir';
  std.std_age = 20;
  std.std_branch = 'CSE';
  print('Student Name: ${std.std_name}');
  print('Student Age: ${std.std_age}');
  print('Student Branch: ${std.std_branch}');
}
