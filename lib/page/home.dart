import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          children: [_top(), _body()],
        ),
      ),
    );
  }

  Widget _top() {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 30),
      // height: 50,
      // width: size.width,
      // decoration: BoxDecoration(color: Colors.red),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chat with \nyour friends',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black12),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Avatar(
                      margin: EdgeInsets.only(right: 10),
                      image: 'assets/images/$index.png',
                    );
                  },
                ),
              ))
            ],
          )
        ],
      ),
    );
  }

  Widget _body() {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45))),
      padding: EdgeInsets.only(top: 35),
      child: ListView(
        children: [
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
          _itemchat(
              avatar: 'assets/images/1.png',
              name: 'Johnny Doe',
              chat: 'Hello',
              time: '19:00'),
        ],
      ),
    ));
  }

  Widget _itemchat({String avatar = '', name = '', chat = '', time = '00:00'}) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 0,
      child: Row(
        children: [
          Avatar(
            margin: EdgeInsets.only(right: 20),
            size: 60,
            image: avatar,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$name',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$time',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$chat',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black54),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;

  const Avatar({
    Key key,
    this.size = 50,
    this.image,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(image)),
          )),
    );
  }
}
