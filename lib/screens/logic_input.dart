// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class LogicInputScreen extends StatefulWidget {
  const LogicInputScreen({Key? key}) : super(key: key);

  @override
  State<LogicInputScreen> createState() => _LogicInputScreenState();
}

class _LogicInputScreenState extends State<LogicInputScreen> {
  TextEditingController _inputLogic = TextEditingController();
  int? _pickedLogic;

  void _saveInput () {
      final _pickedInput = _inputLogic.text;


    if (_pickedInput.isEmpty ) {
      return;
    }
   print(_pickedInput);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logic Input Testing'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Input'),
              controller: _inputLogic,
              keyboardType: TextInputType.number,
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
            ),
            ElevatedButton.icon(
              
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Insert'),
            )
          ],
        ),
      ),
    );
  }
}
