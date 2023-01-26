import 'package:flutter/material.dart';

import 'Added.dart';
import 'Models/Data.dart';

extension GG on BuildContext {
  void openPage(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var CurrentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (CurrentIndex == 0) {
      body = const AddTask();
    } else {
      body = const Setting();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentIndex,
        onTap: (newIndex) {
          CurrentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          )
        ],
      ),
      body: body,
    );
  }
}

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text(
                'Blogs',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: Color.fromARGB(255, 154, 152, 152)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (Context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Added(
                        post: Blog(
                            image: 'https://example.com/image.png',
                            name: 'my first blog ',
                            desc: 'this is my first blog post .I hope you like it !')))),
          );
          setState(() {});
        },
        backgroundColor: const Color.fromARGB(255, 90, 92, 126),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          for (var post in Data.posts)
            const SizedBox(
              height: 20,
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 209, 211, 212), borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListView(
                    children: [
                      for (var post in Data.posts)
                        ListTile(
                          leading: Image(
                            image: NetworkImage(post.image),
                            height: 140,
                            width: 140,
                          ),
                          title: Text(post.name),
                          subtitle: Text(post.desc),
                        )
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 232, 232),
      body: SafeArea(
        child: Column(
          children: const [
            Text(''),
          ],
        ),
      ),
    );
  }
}
