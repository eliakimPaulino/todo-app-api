import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/src/repositories/todo_respository.dart';

main() {
  final respository = ToDoRepository();

  test('Bring a List of ToDoModels', () async {
    final list = await respository.fetchToDos();
    print(list[2].title);
    expect(list[2].title, 'fugiat veniam minus');
  });
}
