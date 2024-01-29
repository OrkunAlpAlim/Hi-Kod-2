import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'UI App with Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTextVisible = false;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                "Drawer Header",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                "Item 1",
                style: TextStyle(fontSize: 14),
              ),
              onTap: () {
                setState(() {
                  isDrawerOpen = false;
                });
              },
            ),
            ListTile(
              title: const Text("Item 2", style: TextStyle(fontSize: 14)),
              onTap: () {
                setState(() {
                  isDrawerOpen = false;
                });
              },
            ),
            ListTile(
              title: const Text("Item 3", style: TextStyle(fontSize: 14)),
              onTap: () {
                setState(() {
                  isDrawerOpen = false;
                });
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              "Welcome to My App",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildWidget("Widget 1", Colors.red, "Open Text Button", true),
                const SizedBox(width: 20),
                _buildWidget("Widget 2", Colors.red, "Close Text Button", false),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                if (isTextVisible) _buildTextContainer(),
                if (isTextVisible) const SizedBox(height: 20),
                const Text(
                  "Explanation:",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "This is my first mobile application homework",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Dialog Title'),
                content: const Text('This is a dialog box.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildWidget(String title, Color color, String buttonText, bool isVisible) {
    return Column(
      children: <Widget>[
        Text(title),
        const SizedBox(height: 20),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isTextVisible = isVisible;
            });
          },
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(155, 40),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildTextContainer() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: const Text(
        "This text was opened because the Open Text Button was pressed. Press the Close Text Button to close it.",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
