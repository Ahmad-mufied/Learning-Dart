
//======= 1. late for Migrating project to null safety
// late modifier can be used while declaring a non-nullable variable that’s initialized after its declaration.
//
// Declaration of variables that will be initialize later is done using late modifier.

late String title;
void getTitle(){
  title = 'Default';
  print('Title is $title');
}

//======= 2. Lazily initializing a variable
// This lazy initialization is handy in following cases.
//
//     The variable might not be needed, and initializing it, is costly.
//     You’re initializing an instance variable, and its initializer needs access to this.

int getResult(){
  print('executed');
  return (2 * 1000);
}

void main() {
  getTitle();

  // This is the program's only call to getResult().
  late int result = getResult(); // Lazily initialized.
  print(result);

  // In the above example, if the result variable is never used, then the expensive getResult() function is never called.
  //
  // Let say getResult() is very heavy function that is calculating that result.
  // But if we assign this to any variable without late then every time getResult() will be executed even if we are not using this.

}