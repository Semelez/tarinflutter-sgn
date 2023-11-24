import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity, // Use double.infinity to fit screen width
              height: MediaQuery.of(context).size.height * 0.2,

              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),

              alignment: Alignment.center,
              child: const Text(
                'Container 1',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 244, 105, 54),),
                      alignment: Alignment.center,
                      child: const Text(
                        'Container 2',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 2),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 243, 93, 82)),
                      alignment: Alignment.center,
                      child: const Text(
                        'Container 3',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 2),
                     Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 244, 187, 54)
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Container 3',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 4',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: const Color.fromARGB(255, 213, 255, 59),
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 5',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: const Color.fromARGB(255, 250, 178, 71),
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 6',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity, // Use double.infinity to fit screen width
              height: MediaQuery.of(context).size.height * 0.15,
              color: const Color.fromARGB(255, 79, 244, 54),
              alignment: Alignment.center,
              child: const Text(
                'Container 7',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform an action when the button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.redAccent,
                    elevation: 5,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  child: const Text('Click Me'),
                ),
                OutlinedButton(
                  onPressed: () {
                    print("Hello World");
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    foregroundColor: Colors.black,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text('Click Me'),
                ),
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
