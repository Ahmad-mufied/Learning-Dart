import 'dart:collection';

import 'dart:ffi';

void main() {

  // Map map =Map<int, String>();
  // HashMap mapA = HashMap();
  // LinkedHashMap mapB = LinkedHashMap();
  // SplayTreeMap mapC = SplayTreeMap();
  //
  // if (mapA is HashMap) {
  //   print('HashMap is up and running!');
  //   // output: HashMap is up and running!
  // }
  //
  // if (mapB is LinkedHashMap) {
  //   print('LikedHashMap is working!');
  //   // output: LinkedHashMap is working
  // }
  //
  // if (mapC is SplayTreeMap) {
  //   print("SplayTreeMap is working!");
  //   // output: SplayTreeMap is working!
  // }

  // MapLiteral();
  // MapConstructor();
  var AllPlanets = DartHashmap();
  print(AllPlanets);

  // ====== To check if the map is empty, use isEmpty or isNotEmpty.
  // ======= To find the number of map entries, use length.
  print(AllPlanets.isEmpty);
  print('AllPlanets length is : ${AllPlanets.length}');
  //======= The forEach iterates through all entries of a map.
  AllPlanets.forEach((key, value) {print('$key \t $value');
  });
  //======= To check whether the map has an entry with a specific key, use containsKey.
  print(AllPlanets.containsKey(4)); // true
  print(AllPlanets.containsKey(1)); // false
  //====== To check whether the map has an entry with a specific value, use containsValue.
  print(AllPlanets.containsValue('Mars')); // true
  print(AllPlanets.containsValue('Venus')); // false
}

void MapLiteral() {
  // Use Map Literal
  var myMap = {
    "id": "JoeDoe",
    "password": "admin123",
    "name": "John Doe",
  };

  print(myMap);
  // Output: {id: JoeDoe, password: admin123, name: John Doe}
}

void MapConstructor() {
  var myMap = new Map();
  myMap['name'] = 'lostcoder';
  myMap['password'] = 'ihatepprogramming';
  print(myMap);
  // output: {name: lostcoder, password: ihateprogramming}
}

Map<int, String> DartHashmap() {
  final Map<int, String> planets = HashMap(); // Is a HashMap
  planets[3] = 'Earth';
  planets.addAll({4: 'Mars'});
  final gasGiants = {6: 'Jupiter', 5: 'Saturn'};
  planets.addEntries(gasGiants.entries);
  return planets; // fx {5: Saturn, 6: Jupiter, 3: Earth, 4: Mars}
}