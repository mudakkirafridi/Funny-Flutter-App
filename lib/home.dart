import 'package:flutter/material.dart';
import 'package:funny_project/PageTwo.dart';

class HomePage extends StatefulWidget {
  static const String homePage = 'home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  TextEditingController password = TextEditingController();
  var haha = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Funny Password Example'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image(
                  height: 200,
                  width: 200,
                  image: AssetImage(haha.isEmpty
                      ? 'assets/images/open.jpg'
                      : 'assets/images/closing.png')),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: password,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 233, 230, 230),
                  filled: true,
                  hintText: 'Enter Password',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onChanged: (value) {
                  haha = value;
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PageTwo.pageTwo);
                  },
                  child: const Text('Next Page'))
            ],
          ),
        ),
      )),
    );
  }
}
