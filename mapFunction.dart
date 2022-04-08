void main() {
  var userArray = ['User 1', 'User 2', 'User 3'];

userArray.map((user) => {
            if (user == 'User 1')
            {
                print('logging user 1 in!')
            } else {
                    print('Not user 1, can\'t log in!')
                }
            }).toList(); // Remove .toList() to see no output!
}
