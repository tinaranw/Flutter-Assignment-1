import 'package:flutter/material.dart';

class Xiao extends StatefulWidget {
  @override
  _XiaoState createState() => _XiaoState();
}

class _XiaoState extends State<Xiao> {
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
                    colors: [Colors.white, Colors.lightGreen[200]])),
          ),
          ListView(
            children: <Widget>[
              Container(
                color: Colors.lightBlue[100],
                height: 200,
                child: Image(
                  image: AssetImage("images/xiaobg.jpg"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat,
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.lightGreen[100],
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                        child: Image(
                          image: AssetImage("images/daddyxiao.jpg"),
                          fit: BoxFit.contain,
                          repeat: ImageRepeat.repeat,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.lightGreen[100],
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                        child: Image(
                          image: AssetImage("images/daddyxiao.jpg"),
                          fit: BoxFit.contain,
                          repeat: ImageRepeat.repeat,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.lightGreen[100],
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                        child: Image(
                          image: AssetImage("images/daddyxiao.jpg"),
                          fit: BoxFit.contain,
                          repeat: ImageRepeat.repeat,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.lightBlue[100],
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                        child: Image(
                          image: AssetImage("images/daddyxiao.jpg"),
                          fit: BoxFit.contain,
                          repeat: ImageRepeat.repeat,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Xiao",
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        fontSize: 34.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Xiao (Chinese: 魈 Xiāo, 'Demon'), Yaksha name Alatus, is an adeptus and the only remaining member of the Five Yakshas dispatched by Morax to subdue the demonic spirits that plagued Liyue. He currently resides in Wangshu Inn, where he secludes himself from crowds and human interactions." +
                          "\nXiao was available as a playable character during the 2nd Closed Beta Test, and was released on the Invitation to Mundane Life event wish on February 3rd 2021." +
                          "\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      textAlign: TextAlign.justify,
                      style: new TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 29,
              ),
              backgroundColor: Colors.red[300],
              elevation: 5,
              splashColor: Colors.grey,
            ),
            ),
          ),
        ],
      ),
    );
  }
}
