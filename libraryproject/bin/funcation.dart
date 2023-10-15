import 'dart:io';
import 'book.dart';
import 'data.dart';

void queryBook() {
  List<Book> objectList = [];
  for (var element in booklist) {
    Book book = Book(
        title: element["title"],
        author: element["author"],
        category: element["category"],
        numberOfCopies: element["numberOfCopies"],
        price: element["price"]);
    objectList.add(book);
  }
  print("Select search by:");
  print("1- Title");
  print("2- Author");
  print("3- Category");
  int? serchType = int.tryParse(stdin.readLineSync()!);
  switch (serchType) {
    case 1:
      print("Enter title:");
      String? userTitle = stdin.readLineSync();
      for (var object in objectList) {
        if (userTitle?.toLowerCase() == object.title) {
          print("Number of available copy is: ${object.numberOfCopies}");
        }
      }
      break;

    case 2:
      print("Enter author name:");
      String? userAuthor = stdin.readLineSync();
      for (var object in objectList) {
        if (userAuthor?.toLowerCase() == object.author) {
          print("Number of available copy is: ${object.numberOfCopies}");
        }
      }
      break;

    case 3:
      print("Enter category:");
      String? userCategory = stdin.readLineSync();
      for (var object in objectList) {
        if (userCategory?.toLowerCase() == object.category) {
          print("Number of available copy is: ${object.numberOfCopies}");
        }
      }

      break;
    default:
      print("Please select correct option");
  }
}

void addBook() {
  try {
    stdout.write("Enter title: ");
    String? addtitle = stdin.readLineSync();
    stdout.write("Enter number of new copies: ");
    int? updateNumOfCopy = int.tryParse(stdin.readLineSync()!);
    List<Book> objectList = [];
    for (var element in booklist) {
      Book book = Book(
          title: element["title"],
          author: element["author"],
          category: element["category"],
          numberOfCopies: element["numberOfCopies"],
          price: element["price"]);
      objectList.add(book);
    }

    for (var object in objectList) {
      if (addtitle!.toLowerCase() == object.title) {
        object.numberOfCopies = (object.numberOfCopies + updateNumOfCopy!);
        print(
            "Update availabe copies of $addtitle is : ${object.numberOfCopies}");
      }
    }
  } catch (error) {
    print("Please enter correct data");
  }
}

void deleteBook() {
  try {
    stdout.write("Enter title:");
    String? deletetitle = stdin.readLineSync();
    stdout.write("Enter number of delete copies:");
    int? updateNumOfCopy = int.tryParse(stdin.readLineSync()!);
    List<Book> objectList = [];
    for (var element in booklist) {
      Book book = Book(
          title: element["title"],
          author: element["author"],
          category: element["category"],
          numberOfCopies: element["numberOfCopies"],
          price: element["price"]);
      objectList.add(book);
    }
    for (var object in objectList) {
      if (deletetitle!.toLowerCase() == object.title) {
        if (object.numberOfCopies > updateNumOfCopy!) {
          object.numberOfCopies = (object.numberOfCopies - updateNumOfCopy);
          print(
              "update availabe copies of $deletetitle is : ${object.numberOfCopies}");
        } else {
          print("number of delete copies not available");
        }
      }
    }
  } catch (errpr) {
    print("Please enter correct data");
  }
}

void bookcategory() {
  List<Book> objectList = [];
  for (var element in booklist) {
    Book book = Book(
        title: element["title"],
        author: element["author"],
        category: element["category"],
        numberOfCopies: element["numberOfCopies"],
        price: element["price"]);
    objectList.add(book);
  }
  for (var object in objectList) {
    print("${object.category}");
  }
  print("Enter name of category:");
  String? usercategory = stdin.readLineSync();
  for (var object in objectList) {
    if (usercategory!.toLowerCase() == object.category) {
      print("${object.title}");
    }
  }
}
