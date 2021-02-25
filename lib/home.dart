import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color unfavorite = Colors.white;
  bool checking = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.lightGreen[300],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.lightGreen[200], Colors.white])),
          ),
          Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/xiaowallpaper.jpg"),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.lightGreen[200],
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.all(1),
                      margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                      child: Image(
                        image: AssetImage("images/vayuda.png"),
                        fit: BoxFit.contain,
                        repeat: ImageRepeat.repeat,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.lightGreen[50],
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.all(1),
                      margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                      child: Image(
                        image: AssetImage("images/prosperity.png"),
                        fit: BoxFit.contain,
                        repeat: ImageRepeat.repeat,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.lightGreen[200],
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.all(1),
                      margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                      child: Image(
                        image: AssetImage("images/qingxin.png"),
                        fit: BoxFit.contain,
                        repeat: ImageRepeat.repeat,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.lightGreen[50],
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.all(1),
                      margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                      child: Image(
                        image: AssetImage("images/jujvenilejade.png"),
                        fit: BoxFit.contain,
                        repeat: ImageRepeat.repeat,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width * 0.97,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Xiao (魈 Xiāo)',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: new SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  scrollDirection: Axis.vertical, //.horizontal
                  child: new Text(
                    "Xiao (Chinese: 魈 Xiāo, 'Demon'), Yaksha name Alatus, is an adeptus and the only remaining member of the Five Yakshas dispatched by Morax to subdue the demonic spirits that plagued Liyue. He currently resides in Wangshu Inn, where he secludes himself from crowds and human interactions." +
                        "\n \n Xiao was available as a playable character during the 2nd Closed Beta Test, and was released on the Invitation to Mundane Life event wish on February 3rd 2021." +
                        "\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    textAlign: TextAlign.justify,
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: FloatingActionButton(
                 child: Icon(
                  Icons.favorite,
                  size: 29,
                ),
                foregroundColor: unfavorite,
                backgroundColor: Colors.green[50],
                elevation: 5,
                splashColor: Colors.grey,
                onPressed: () {
                  setState(() {
                
                    if(!checking){
                     checking = true;
                      unfavorite = Colors.red[300];
                   } else {
                     checking = false;
                      unfavorite = Colors.white;
                   }
                   
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
