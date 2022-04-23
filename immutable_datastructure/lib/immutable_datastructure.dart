import 'dart:collection';
import 'package:meta/meta.dart';

List<int> get list => [1, 2, 3];
List<int> get constList => const [1, 2, 3];

@immutable
class Student {
  const Student(this.rollNum, this.name);

  final int rollNum;
  final String name;
}

class StudentName {
  StudentName(this.first, this.middle, this.last);

  String first;
  String middle;
  String last;
}

// Base datalass
class Message {
  const Message(this.id, this.text);

  final int id;
  final String text;
}

// Has direct access to this collection
class MessageThread {
  const MessageThread(this.messages);

  final List<Message> messages;
}

// Return a copy of this collection
// But performance will decrease as the list grows bigger
class MessageThread2 {
  const MessageThread2(this._messages);

  final List<Message> _messages;
  List<Message> get messages => _messages.toList();
}

// When the user endeavors to add another message to their duplicate list
// a special case is tossed at runtime, and the change is prevented.
class MessageThread3 {
  const MessageThread3(this._messages);

  final List<Message> _messages;
  List<Message> get messages => List.unmodifiable(_messages);
}

class MessageThread4 {
  const MessageThread4(this._messages);

  final List<Message> _messages;
  UnmodifiableListView<Message> get messages =>
      UnmodifiableListView<Message>(_messages);
}

// The MessageThread._internal() a constructor does precisely the same
// occupation our old default constructor did, however, it must be gotten to by
// inner code.
class MessageThread5 {
  const MessageThread5._internal(this.messages);

  final List<Message> messages;

  factory MessageThread5(List<Message> messages) {
    return MessageThread5._internal(List.unmodifiable(messages));
  }
}

// Simple, and it works really hard of ensuring just upheld refreshes are
// finished. Essentially, each capacity takes a reference to the past student
// state, at that point it utilizes that and new information to build an
// all-new case, returning it to the caller.
class Student2 {
  const Student2(this.rollNum, this.name);

  final int rollNum;
  final String name;
}

Student2 updateStudentRollNum(Student2 oldState, int rollNum) {
  return Student2(rollNum, oldState.name);
}

Student2 updateStudentName(Student2 oldState, String name) {
  return Student2(oldState.rollNum, name);
}

// Less verbose in your naming, since unmistakably each update strategy has a
// place with the Student class
//
// However, updateRollNum() is making another case of Student with the
// approaching rollNum contention and the old name. The updateName() a strategy
// is doing the inverse.
class Student3 {
  const Student3(this.rollNum, this.name);

  final int rollNum;
  final String name;

  Student3 updateRollNum(int rollNum) {
    return Student3(rollNum, name);
  }

  Student3 updateName(String name) {
    return Student3(rollNum, name);
  }
}

class Student4 {
  const Student4(this.rollNum, this.name);

  final int rollNum;
  final String name;

  Student4 copyWith({int? rollNum, String? name}) {
    return Student4(
      rollNum ?? this.rollNum,
      name ?? this.name,
    );
  }
}

class NumberList {
  NumberList(this._numbers);

  final List<int> _numbers;

  List<int> get numbers => List.unmodifiable(_numbers);

  // ".." is cascade operator, it was introduced to avoid the need to
  // return "this"

  // List list = [];
  // list.add(color1);
  // list.add(color2);
  // list.add(color3);
  // list.add(color4);

  // with cascade
  // List list = [];
  // list
  //   ..add(color1)
  //   ..add(color2)
  //   ..add(color3)
  //   ..add(color4);
  NumberList add(int number) {
    return NumberList(_numbers..add(number));
  }
}

int calculate() {
  final str = "This is a Flutter Devs.";
  str = "This is a Aeologic Technologies."; // error

  var a = list;
  var b = list;
  var c = constList;
  var d = constList;
  print(a == b); // false
  print(c == d); // true

  final thread = MessageThread5([
    Message(1, "Message 1"),
    Message(2, "Message 2"),
  ]);

  thread.messages.first.id = 10; // blocked
  thread.messages.add(Message(3, "Message 3")); // This works!

  // When this code executes, the std2 variable will reference a duplicate of
  // std1 with a refreshed rollNum value yet the name will be unaltered.
  // The std3 duplicate will have another name and the original RollNum.
  // With this Student class, the std4 duplicate activity is indistinguishable
  // from making another object altogether, as it replaces each value.
  final std1 = Student4(1, "Jake");
  final std2 = std1.copyWith(rollNum: 2);
  final std3 = std1.copyWith(name: "Jerry");
  final std4 = std1.copyWith(rollNum: 2, name: "Jerry");

  var l1 = List.empty()
    ..add(0)
    ..addAll([1, 2, 3]);
  l1.add(1);

  return 6 * 7;
}
