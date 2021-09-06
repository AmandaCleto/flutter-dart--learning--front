import 'package:flutter/material.dart';
import '../Todo.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({Key? key}) : super(key: key);

  @override
  _InputComponentState createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  final List<Todo> todoList = [
    Todo(
      description: 'Andar de Bike',
      icon: '57585',
      checked: true,
    ),
  ];
  void addNewTodo(String description) {
    final newTodo = Todo(
      description: description,
      icon: '57585',
      checked: false,
    );
    setState(() {
      todoList.add(newTodo);
    });
  }

  int sum = 99;

  final descriptionInput = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    descriptionInput.dispose();
    super.dispose();
  }

  void clearText() {
    descriptionInput.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Crie um novo todo:',
              style: TextStyle(
                color: Color(0xFF062726),
                letterSpacing: 1.0,
                fontFamily: 'RobotoSlab',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              color: Colors.transparent,
              elevation: 10,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Colors.grey[300],
              child: Stack(
                alignment: Alignment.centerRight,
                children: <Widget>[
                  TextFormField(
                    controller: descriptionInput,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xFFECECEC),
                      hintText: 'Adicione um item',
                      hintStyle: TextStyle(color: Colors.grey[800]),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 7.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xFF34817C),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          color: Color(0xFFECECEC),
                          onPressed: () {
                            addNewTodo(
                              descriptionInput.text,
                            );
                            clearText();
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
