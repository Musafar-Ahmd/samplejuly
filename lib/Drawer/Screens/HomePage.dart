import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplejuly/Drawer/Screens/otherPage.dart';
import 'package:samplejuly/Drawer/Screens/aboutpage.dart';
void main(){
  runApp(MaterialApp(home: HomePage(),));
}
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  String mainProfilePic =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3tX9GUY0RJdxvyvuX0zIx_PHafgmoLdm5Lg&usqp=CAU";
  String otherProfilePic =
      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/368-mj-2516-02.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=9f3d0ad657bbca1c0f2db36ad7deb323";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.transparent,
            ),
            child:Drawer(

                child: ListView(
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      accountName: Text("John Doe"),
                      accountEmail: Text("johndoe@email.com"),
                      currentAccountPicture: GestureDetector(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(mainProfilePic),
                          ),
                          onTap: () => print("Current User")
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                    ListTile(
                        title: Text("Home Page"),
                        trailing: Icon(Icons.menu),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => OtherPage("Other Page"),
                          ));
                        }),
                    ListTile(
                        title: Text("About Page"),
                        trailing: Icon(Icons.info),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => aboutPage("About Page"),
                          ));
                        }),
                    ListTile(
                        title: Text("Settings Page"),
                        trailing: Icon(Icons.security),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                OtherPage("Settings Page"),
                          ));
                        }),
                    Divider(
                      thickness: 10.0,
                    ),
                    ListTile(
                      title: Text("Close"),
                      leading: Icon(Icons.cancel),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ],
                )))
    );
  }
}