// void main() {
  
// Vehicle car1 =  Vehicle("V6");
// Vehicle car2 =  Vehicle("V12");
// Supercar car3 = new Supercar("V16");
// car1.display();
// print(car2.engine);
//  car3.display();
//  cars();
// }

// class Vehicle {
//   String engine;
//   Vehicle(this.engine) {

//   }

//   void display() {
//     print(engine);
//   }
  
// }

// class Supercar extends Vehicle {
//   Supercar(String engine) : super(engine);
// }


// void cars() {
//  var scars = {"Tesla": "electrics", "Toyota": "Gasoline" };
//  print(scars);
//  var fruits = new Map();
//  fruits["Apple"] = "Red";
//  print(fruits);
//  var userAges = {"Jeff": "22", "George": "45"};
//  print(userAges);
//  print(userAges["Jeff"]);
// }
// Lists
// void main () {
//   var list1 = ["a", "b", "c"];
//  list1.add("D");
//    print(list1);
//     // print(list1[1]);
//     print(list1.length);
// }


// void main() async {
//    futureFunction();
//   await futureFunction();
//   print("Hello");
//  // UI -> Loading......-> Image
// //  AT -> Image ..->

// // Future<T>? _future;
// // go
// }

// Future futureFunction() async {
//  await Future.delayed(Duration(seconds: 5)).whenComplete(() => print("Future Done!"));
// }

 /* NULL SAFETY. */
 void main() {
  //  String name;
  //  name = "Saurabh";
  //  print(name);
  // Car car; with out null safety.
// Car car = Car(); //with null safety.
// int? hp = 900;
// late Car car;
 Car? car;
//  car = Car("Lamborghini");
if(car != null) {
  print(car.name);
}
// print(hp);
  
 }
class Car {
    // String name = "Saurabh Dhital";
    late final String name;
    Car(this.name);
  }

