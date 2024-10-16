import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    // var lebar = MediaQuery.of(context).size.width;
    // var tinggi = MediaQuery.of(context).size.height;

    Future<dynamic> showAlertDialog(
        BuildContext context, String judul, String konten) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(judul),
            content: Text(konten),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Pertemuan 6"),
      ),
      body:
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: tinggi,
          //   color: Colors.amberAccent,
          // ),
          // GestureDetector(
          // onTap: () {
          // setState(() {
          //   selected = !selected;
          // });
          // },
          // onLongPress: () {
          //   setState(() {
          //     selected = !selected;
          //   });
          // },
          //   onDoubleTap: () {
          //     setState(() {
          //       selected = !selected;
          //     });
          //   },
          //   child: Center(
          //     child: AnimatedContainer(
          //       width: selected ? 300.0 : 100.0,
          //       height: selected ? 300.0 : 100.0,
          //       color: selected ? Colors.red : Colors.blue,
          //       alignment:
          //           selected ? Alignment.center : AlignmentDirectional.topCenter,
          //       duration: const Duration(seconds: 2),
          //       curve: Curves.fastOutSlowIn,
          //     ),
          //   ),
          // ),
          //     Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Text('Headline Large',
          //           style: Theme.of(context).textTheme.headlineLarge),
          //       const SizedBox(height: 20),
          //       Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
          //       Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
          //       Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
          //       const SizedBox(height: 20),
          //       ElevatedButton(
          //         onPressed: () {},
          //         child: const Text('Elevated Button'),
          //       ),
          //       const SizedBox(height: 20),
          //       OutlinedButton(
          //         onPressed: () {},
          //         child: const Text('Outlined Button'),
          //       ),
          //       const SizedBox(height: 20),
          //       TextButton(
          //         onPressed: () {},
          //         child: const Text('Text Button'),
          //       ),
          //     ],
          //   ),
          // ),
          //     Center(
          //   child: ElevatedButton(
          //     onPressed: () {
          //       const mySnackBar = SnackBar(
          //         content: Text("Berhasil membuat SnackBar"),
          //         duration: Duration(seconds: 3),
          //         padding: EdgeInsets.all(10),
          //         backgroundColor: Colors.amberAccent,
          //       );
          //       ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          //     },
          //     child: Text(
          //       "Tampilkan SnackBar",
          //       style: Theme.of(context).textTheme.bodyLarge,
          //     ),
          //   ),
          // ),
          Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(
              context,
              "Alert Dialog",
              "Ini adalah sebuah alert dialog. Ini juga bagian konten",
            );
          },
          child: const Text("Tampilkan Alert Dialog"),
        ),
      ),
    );
  }
}
