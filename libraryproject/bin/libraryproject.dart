import 'dart:io';
import 'data.dart';
import 'funcation.dart';

void main(List<String> arguments) {
    stdout.write("Enter your name: ");
    String? userName = stdin.readLineSync();
    print("welcome ${userName}, please select number of service:");
    print("1- Search about book");
    print("2- Add new book");
    print("3- Delete book");
    print("4- Purchase book");
    print("5- Modify book data");
    print("6- Display book categories");
    int? serviceNumber = int.tryParse(stdin.readLineSync()!);
    switch (serviceNumber) {
      case 1:
        queryBook();
        break;
      case 2:
        addBook();
        break;
      case 3:
        deleteBook();
        break;
      case 4:
        break;
      case 5:
        break;
      case 6:
        bookcategory();
        break;
      default:
        print("You select incorrect number");
    }
  }
