// Question : 1
// void main() {
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
//   late Set<int> common = {};
//   a.forEach((index) => {
//   if(b.contains(index)) {
//     common.add(index)
//   }
//   });
//   print('Common elements: ${common.join(',')}');
// }

// Question : 2
// import 'dart:io';
//
// void main() {
//   print("Enter the number of Fibonacci numbers to generate: ");
//   int number = int.parse(stdin.readLineSync()!);
//
//   int num1 = 0, num2 = 1, temp;
//
//   if(number >= 1) print(num1);
//   if(number >= 2) print(num2);
//   for(int i = 3; i<= number; i++) {
//     temp = num1;
//     num1 = num2;
//     num2 = num1 + temp;
//     print(num2);
//   }
// }

// Question : 3
// void main() {
//   var list = [1, 4, 65, -3, 56, 12, -8, 0, 12, 45, -78, 0, 90];
//
//   late int evens = 0, odds = 0, zeros = 0;
//
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == 0) {
//       zeros++;
//     }
//     else if (list[i] % 2 == 0) {
//       evens++;
//     }
//     else {
//       odds++;
//     }
//   }
//   print("Even no.s: $evens");
//   print("Odd no.s: $odds");
//   print("Zeros: $zeros");
// }

// Question : 4

// import 'dart:io';
//
// class Animal {
//   int? id;
//   String? name, color;
//
//   void getAnimal() {
//     print("Enter animal details: id, name, color ");
//     id = int.parse(stdin.readLineSync()!);
//     name = stdin.readLineSync()!;
//     color = stdin.readLineSync()!;
//   }
//   void printAnimal() {
//     print("Animal details: id: $id\nname: $name\ncolor: $color");
//   }
// }
//
// class Cat extends Animal {
//   String? sound;
//   void getCat() {
//     print("Enter cat sound");
//     sound = stdin.readLineSync()!;
//   }
//   void printCat() {
//     print("Cat details: sound: $sound");
//   }
// }
//
// void main(){
//   Cat ob = Cat();
//   ob.getAnimal();
//   ob.getCat();
//   ob.printAnimal();
//   ob.printCat();
// }

// Question : 5
// import 'dart:io';
//
// class MyException implements Exception {
//   String? bug;
//   MyException(bug);
//   invalidEmail() {
//     return "Invalid Email\n";
//   }
//   invalidPassword() {
//     return "Invalid Password\nPassword should have atleast 8 characters\n";
//   }
//   invalidOtp() {
//     return "Invalid OTP";
//   }
// }
//
//  main() {
//   late String email, password;
//   late int otp;
//
//   try {
//     print("Enter your email: ");
//     email = stdin.readLineSync()!;
//     if ((email.toString().contains('@') && email.toString().contains('.')) ==
//         false) {
//       throw MyException('').invalidEmail();
//     }
//   } catch (error) {
//     print(MyException(error).invalidEmail());
//     return 0;
//   }
//   try {
//     print("Enter your password: ");
//     password = stdin.readLineSync()!;
//     if (password.toString().length < 8) {
//       throw MyException('').invalidPassword();
//     }
//   } catch (error) {
//     print(MyException(error).invalidPassword());
//     return 0;
//   }
//
//   try {
//     print("Enter 6 digit OTP: ");
//     otp = int.parse(stdin.readLineSync()!);
//     if ((otp > 000000 && otp <= 999999) == false) {
//       throw MyException('').invalidOtp();
//     }
//   } catch (error) {
//     print(MyException(error).invalidOtp());
//     return 0;
//   }
//
//   print('\nLogin Successful');
// }

// Question : 6

// void main() {
//   Map<String, dynamic> countries = {
//     'name': 'John',
//     'address' : 'Random Address',
//     'age': 21,
//     'country' : 'India'
//   };
//   print("Before change: ");
//   print(countries);
//
//   countries['country'] = 'America';
//
//   print("\nAfter change: ");
//   print(countries);
// }

// Question : 7
// void main() {
//   bool isPrime(int number) {
//     if (number < 2) {
//       return false;
//     }
//     for (int i = 2; i <= number ~/ 2; i++) {
//       if (number % i == 0) return false;
//     }
//     return true;
//   }
//
//   for (int i = 10; i < 20; i++) {
//     if (isPrime(i)) {
//       print(i);
//     }
//   }
// }

// Question : 8
// class Grandpa {
//   String name = "John";
//   int age = 71;
//
//   void grandpaDetails() {
//     print("Name : $name, age : $age");
//   }
// }
//
// class Son extends Grandpa {
//   String sname = 'James';
//   int sage = 55;
//
//   void sonDetails() {
//     print('Name: $sname, age : $sage');
//   }
// }
//
// class Daughter extends Grandpa {
//   String dname = 'Carolina';
//   int dage = 48;
//
//   void daughterDetails() {
//     print('Name: $dname, age : $dage');
//   }
// }
//
// void main() {
//   Son ob1 = Son();
//   Daughter ob2 = Daughter();
//
//   ob1.sonDetails();
//   ob1.grandpaDetails();
//   print("");
//   ob2.daughterDetails();
//   ob2.grandpaDetails();
// }

// Question : 9
// import 'dart:io';
//
// bool isPrime(int number) {
//   if(number < 2) {
//     return false;
//   }
//   for(int i = 2; i<= number ~/2; i++) {
//     if(number%i == 0) return false;
//   }
//   return true;
// }
// void main() {
//   print("Enter a number to check whether prime or not: ");
//   int number = int.parse(stdin.readLineSync()!);
//
//   print("Whether prime: ${isPrime(number)}");
// }

// Question : 10
// void main() {
//   List<int> a = [1, 10, 2, 3, 5, 8, 28, 41, 34, 5, 62];
//
//   a.forEach((index) => {
//         if (index > 2) {if (index % 4 == 0) print(index)}
//       });
// }

// Question : 12
// import 'dart:io';
// class MyException implements Exception {
//   String? bug;
//   MyException(bug);
//   errorOccurred() {
//     return 'Not divisible by zero';
//   }
// }
//
// void main() {
//   print('Enter two numbers: ');
//   int number = int.parse(stdin.readLineSync()!);
//   int number2 = int.parse(stdin.readLineSync()!);
//   try {
//     int div = number~/number2;
//     print(div);
//   }
//   catch(error) {
//     print("Exception: $error, ${MyException(error.toString()).errorOccurred()}");
//   }
// }

// Question : 13
// void main() {
//   var a = [-5,1,10,0,2,-4,0,3,5,8,28,-74,0,41,34,5,-9,62];
//
//   late int evens = 0, odds = 0, zeros = 0;
//
//   for (int i = 0; i < a.length; i++) {
//     if (a[i] == 0) {
//       zeros++;
//     }
//     else if (a[i] % 2 == 0) {
//       evens++;
//     }
//     else {
//       odds++;
//     }
//   }
//   print("Even no.s: $evens");
//   print("Odd no.s: $odds");
//   print("Zeros: $zeros");
// }

// Question : 14
// import 'dart:io';
//
// void main() {
//   int fact = 1;
//   print("Enter a number to find factorial: ");
//   int number = int.parse(stdin.readLineSync()!);
//
//   if (number == 0) {
//     fact = 0;
//     print("Factorial: $fact");
//   } else if (number > 0) {
//     for (int i = 1; i <= number; i++) {
//       fact = fact * i;
//     }
//     print("Factorial: $fact");
//   } else {
//     print('Not possible');
//   }
// }

// Question : 15
// void main() {
//   int sum = 0;
//   for(int i = 1; i < 25; i++) {
//     if(i%2 != 0) {
//       sum += i;
//     }
//   }
//   print("Sum = $sum");
// }
