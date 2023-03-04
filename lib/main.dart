import 'package:flutter/material.dart';
import 'model/user.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Slidable List View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = allUsers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Slidable(
                startActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.green,
                      icon: Icons.share,
                      label: "Share",
                      onPressed: (context) => _onDismissed(),
                    )
                  ],
                ),
                child: buildUserListTile(user));
          },
        ));
  }

  Widget buildUserListTile(User user) => ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(user.name),
        subtitle: Text(user.email),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(user.image),
        ),
      );
}

class _onDismissed {}
