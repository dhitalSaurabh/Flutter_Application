import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskly/model/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight, _deviceWidth;
  String? _newTaskContent;
  Box? _box;

  _HomePageState();
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    // print("Input Value: $_newTaskContent");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        toolbarHeight: _deviceHeight * 0.15,
        title: Text(
          "Taskly!",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: _taskView(),
      floatingActionButton: _addTaskButton(),
    );
  }

  Widget _taskView() {
    Hive.openBox('task');
    return FutureBuilder(
      future: Hive.openBox('tasks'),
      // future: Future.delayed(
      //   Duration(seconds: 2),
      // ),
      builder: (BuildContext _context, AsyncSnapshot _snapshot) {
        // if (_snapshot.connectionState == ConnectionState.done) {
          if (_snapshot.hasData) {
          _box = _snapshot.data;
          return _tasklist();
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _tasklist() {
    // Task _newTask = Task(
    //   content: "eat pizza",
    //   timestamp: DateTime.now(),
    //   done: false,
    // );
    // _box?.add(_newTask.toMap());
    List tasks = _box!.values.toList();
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (
        BuildContext _context,
        int _index,
      ) {
        var task = Task.fromMap(tasks[_index]);
        return ListTile(
          title: Text(
            task.content,
            style: TextStyle(
              decoration: task.done ? TextDecoration.lineThrough : null,
            ),
          ),
          subtitle: Text(
            task.timestamp.toString(),
          ),
          trailing: Icon(
            task.done
                ? Icons.check_box_outlined
                : Icons.check_box_outline_blank_outlined,
            color: Colors.purple,
          ),
          onTap: () {
             task.done = !task.done;
              _box!.putAt(
                _index,
                task.toMap(),
              );
            setState(() {
            });
          },
          onLongPress: () {
            _box!.deleteAt(_index);
            setState(() {
              
            });
          },
        );
      },
    );

    // ListView(
    //   children: [

    //   ],
    // );
  }

  Widget _addTaskButton() {
    return FloatingActionButton(
      onPressed: _displayTaskPopup,
      child: Icon(
        Icons.add,
      ),
    );
  }

  void _displayTaskPopup() {
    showDialog(
        context: context,
        builder: (BuildContext _context) {
          return AlertDialog(
            title: Text("Add New Task!"),
            content: TextField(
              onSubmitted: (_) {
                if (_newTaskContent != null) {
                  var _task = Task(
                    content: _newTaskContent!,
                    timestamp: DateTime.now(),
                    done: false,
                  );
                  _box!.add(_task.toMap());
                  setState(() {
                    _newTaskContent = null;
                    Navigator.pop(context);
                  });
                }
              },
              onChanged: (_value) {
                setState(() {
                  _newTaskContent = _value;
                });
              },
            ),
          );
        });
  }
}
