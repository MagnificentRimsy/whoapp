import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:who/repeatedWidgets/CustomTextField.dart';
import 'package:who/res/color.dart';
import 'package:who/res/size.dart';

void main() => runApp(ProfilePage());

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false, // hides leading widget
            flexibleSpace: Container(
              child: Image.asset(
                "assets/images/logo_b.png",
              ),
            ),
          )),
      // appBar: AppBar(

      //   elevation: .5,
      //   centerTitle: true,
      //   title: Container(
      //     padding: EdgeInsets.all(20),
      //     child: Image.asset(
      //       "assets/images/logo_b.png",

      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.convert(context, 24)),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: size.convert(context, 5),
                ),

                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color: HexColor('#0093D5'),
                    textColor: Colors.white,
                    splashColor: Colors.white,
                    child: Icon(Icons.camera_alt_rounded),
                    padding: EdgeInsets.all(35),
                    shape: CircleBorder(),
                  ),
                ),
                SizedBox(
                  height: size.convert(context, 20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Jonah Boyi',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.convert(context, 10),
                    ),
                    Text(
                      'jonahrchirka@gmail.com',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                // CircleAvatar(
                //   radius: 60.0,
                //   backgroundImage:AssetImage("assets/icons/whiteLogo1.png", ),
                //   backgroundColor: appColor,
                // ),

                SizedBox(
                  height: size.convert(context, 30),
                ),

                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.perm_identity,
                      color: HexColor('#0093D5'),
                      size: 25,
                    ),
                    title: Text(
                      'My Account',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[400],
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.convert(context, 10),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: HexColor('#0093D5'),
                      size: 25,
                    ),
                    title: Text(
                      'Password Settings',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[400],
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.convert(context, 10),
                ),

                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.red,
                      size: 25,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),

                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    iconWidget: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.perm_identity,
                          color: Colors.grey[400],
                          size: 25,
                        )),
                    hints: "Name",
                  ),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(3.0, 3.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0),
                  ]),
                ),
                SizedBox(
                  height: size.convert(context, 30),
                ),
                Container(
                  child: CustomTextField(
                    color1: Colors.white70,
                    iconWidget: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.phone_android,
                          color: Colors.grey[400],
                          size: 20,
                        )),
                    hints: "Device Id",
                    trailingIcon: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.convert(context, 15)),
                        child: Icon(
                          Icons.qr_code,
                          color: Colors.grey[400],
                          size: 25,
                        )),
                  ),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(3.0, 3.0),
                        blurRadius: 10.0,
                        spreadRadius: 1.0),
                  ]),
                ),
                SizedBox(
                  height: size.convert(context, 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
