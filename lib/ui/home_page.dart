import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teknikalph_app/ui/signup_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _downloadThis(){
    debugPrint("Download Button Tapped!");
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Title Here"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.get_app),
            onPressed: _downloadThis,
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => debugPrint("Search Button Tapped"),
          ),
        ],
      ),
      backgroundColor: Colors.amberAccent,
      body: Container(
          color: Colors.blueAccent.withOpacity(0.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    color: Colors.orange,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    color: Colors.white,
                    width: 50,
                    height: 50,
                  ),
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(15.0),
                        color: Colors.red,
                        width: 50,
                        height: 50,
                      )
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    color: Colors.purple,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              InkWell(
                child: const Text(
                  "Text # 2",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                onTap: () => debugPrint("Text # 2 Tapped"),
              ),
              const Text(
                "Text # 3",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ],
          )

        // Text(
        //     "Hi, Material Design!",
        //     textDirection: TextDirection.ltr,
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontStyle: FontStyle.italic,
        //       fontSize: 32,
        //     )
        // )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.tealAccent,
        child: const Icon(Icons.add),
        onPressed: () => debugPrint("Add Floating Button Tapped!"),
        tooltip: 'Add Button Tooltip',
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: "Pets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessible),
            label: "Accessible",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Book",
          ),
        ],
        onTap: (int i) => debugPrint("Button $i Tapped"),
      ),
    );
  }
}