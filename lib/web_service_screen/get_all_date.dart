import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebServic'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'UserName',
                hintStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.blue.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: descController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Discription',
                hintStyle: const TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.blue.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 350,
              width: double.infinity,
              child: Card(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Send'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('delete'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Update'),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
