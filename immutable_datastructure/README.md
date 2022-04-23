
## Immutable Collection
```dart
class Message {
  const Message(this.id, this.text);

  final int id;
  final String text;
}

class MessageThread {
  const MessageThread._internal(this.messages);

  final List<Message> messages;

  factory MessageThread(List<Message> messages) {
    return MessageThread._internal(List.unmodifiable(messages));
  }
}


final thread = MessageThread5([
    Message(1, "Message 1"),
    Message(2, "Message 2"),
]);
thread.messages.first.id = 10; // blocked
thread.messages.add(Message(3, "Message 3")); // This works!
```

## Change Immutable Class
```dart
class Student {
  const Student(this.rollNum, this.name);

  final int rollNum;
  final String name;

  Student copyWith({int? rollNum, String? name}) {
    return Student(
      rollNum ?? this.rollNum,
      name ?? this.name,
    );
  }
}

final std1 = Student4(1, "Jake");
final std2 = std1.copyWith(rollNum: 2);
final std3 = std1.copyWith(name: "Jerry");
final std4 = std1.copyWith(rollNum: 2, name: "Jerry");
```

## Change Immutable Collection
```dart
class NumberList {
  NumberList(this._numbers);

  final List<int> _numbers;

  List<int> get numbers => List.unmodifiable(_numbers);

  NumberList add(int number) {
    return NumberList(_numbers..add(number));
  }
}

final numlist = NumberList([1, 2, 3]);
numlist.add(1);
```
