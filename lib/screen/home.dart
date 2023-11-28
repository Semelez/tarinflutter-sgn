  import 'package:flutter/material.dart';
  import 'package:testflutter/component/class_all.dart';

  class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

    @override
    State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {
    late Components components;
    int count = 0;
    void _handleClick() {
      setState(() {
        count++;
      });
    }
    @override
    Widget build(BuildContext context) {
      components = Components(context: context);
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              components.foundation.foundations(
                child: components.text.text(text: "Container 1"),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.15,
                //add red color
                color: Colors.red,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Row(
                    children: <Widget>[
                      const SizedBox(width: 2),
                      components.foundation.foundations(
                        child: components.text.text(text: "Container 2"),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        color: Colors.orange,
                      ),
                      const SizedBox(width: 2),
                      components.foundation.foundations(
                        child: components.text.text(text: "Container 3"),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: components.foundation.foundations(
                      child: components.text.text(text: "Container 4"),
                      width: 0,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    child: components.foundation.foundations(
                      child: components.text.text(text: "Container 5"),
                      width: 0,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: components.foundation.foundations(
                        child: components.text.text(text: "Container 6"),
                        width: 0,
                        height: MediaQuery.of(context).size.height * 0.2,
                        color: Colors.purple),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              components.foundation.foundations(
                child: components.text.text(text: "$count"),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.pink,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  components.button.btnBotton(onpress: _handleClick),
                ],
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      );
    }

  
  }
