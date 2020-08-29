import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/collage.jpg'),
                fit: BoxFit.cover
              ),
            ),
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 210, 0, 0),
                  child: Text(
                  "सीसीएन  न्यूज़",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 48.0,
                    color: Colors.red,
                    shadows: [
                      Shadow( // bottomLeft
                        offset: Offset(-2.5, -2.5),
                        color: Colors.black
                      ),
                      Shadow( // bottomRight
                        offset: Offset(2.5, -2.5),
                        color: Colors.black
                      ),
                      Shadow( // topRight
                        offset: Offset(2.5, 2.5),
                        color: Colors.black
                      ),
                      Shadow( // topLeft
                        offset: Offset(-2.5, 2.5),
                        color: Colors.black
                      ),
                    ],
                  )
                  ),
                ),
                SizedBox(height: 120,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    color: Color.fromRGBO(173, 31, 31, 0.60),
                    textColor: Colors.white,
                    onPressed: () {
                      
                    },
                    child: Text(
                      "Read News",
                      style: TextStyle(
                        fontSize: 24
                      ),
                      ),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30)
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                        _facebook();
                      },
                      icon: FaIcon(FontAwesomeIcons.facebook, size: 40, color: Colors.blue,),
                    ),
                    IconButton(
                  onPressed: (){
                    _twitter();
                  },
                  icon: FaIcon(FontAwesomeIcons.twitter, size: 40, color: Colors.cyan[200],),
                ),
                IconButton(
                  onPressed: (){
                    _propkar();
                  },
                  icon: FaIcon(FontAwesomeIcons.tree, size: 40, color: Colors.green[800],),
                ),
                  ],
                ),

              ],
            )
        ],
      ),
    );
  }
}
    _facebook() async {
    const url = 'https://www.facebook.com/ashwani.chauhan.33886';
    if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

    _twitter() async {
    const url = 'https://twitter.com';
    if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


    _propkar() async {
    const url = 'https://www.propkarcharitable.me/';
    if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


