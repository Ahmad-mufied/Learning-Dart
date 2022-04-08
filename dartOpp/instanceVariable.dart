// ===== What is Instance Variable ?
// Instance variable is a variable declared inside the class but outside any function(method) or any block of code.
//
// Basically, instance variables are the properties of class. every object of a particular class has  individual copy of all instance variables.
//
// Instance variables are created with object creation and gets destroyed with object destruction.
//
// The scope of instance variables differs from object to object of particular class. Which means each copy of instance variables belongs to particular object of that class.

class Avengers{
  int rank;
  String Name;
  Avengers(this.rank,this.Name){
    print("Rank of " + Name + " is " + rank.toString());
  }

}

void main() {
  Avengers marvel=new Avengers(1,"Captain Marvel");
  Avengers thor=new Avengers(2,"Almighty Thor");
  Avengers hulk=new Avengers(3,"The Hulk");
}

// ====== What is Reference Variable?
// The reference variable reference to or point to the memory storage allocated for particular object created.
//
// In simple language, reference variable is the alias or identifier for the declared objects.

class Test{
}
void test(){
  int x;	// x point to some random location like 0x02304 for object of type(class) int variable declared.
  String y;	// y point to some random location like 0x089540 for object of type(class) String variable declared.
  Test T1=new Test();	// test points to some random like 0x02560 for  object of type(class) Test declared.
}

// In above example, x, y and T1 are different variables pointing to their respective objects stored in the memory.
//
// They are just references of the objects to easily access them.
//
// At a time, a reference variable can refer or point to the single object of the class. But, multiple reference variable can refer or point to same object.

class Book{
}

void books(){
/* New Object of Class Book is created and referenced by the Reference variable B1.*/
	Book B1=new Book();

/* Reference Variable B2 is created and ultimately refers to the same object referred by B1.*/
	Book B2=B1;

/* New Object of Class Book is created and referenced by the Reference variable B3. */
	Book B3=new Book();

/* Reference Variable B3 is created and ultimately refers to the same object referred by B2. */
	B3=B2;
}