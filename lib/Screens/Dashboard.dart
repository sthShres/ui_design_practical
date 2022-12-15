import 'package:flutter/material.dart';
import 'package:flutter_ui/Utilities/Screensize.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => {},
          ),
          backgroundColor: Colors.white,
          title: Text(
            "My Dashboard",
            style: TextStyle(color: Colors.black),
          )),
      body: Container(
        child: Column(children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: getSize(250, context),
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getSize(5, context)),
                    color: Color(0xff5199AB),
                    image: DecorationImage(
                        image: AssetImage("assets/building.jpg"),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: 170,
                child: Container(
                  height: getSize(130, context),
                  width: getSize(130, context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255),
                      style: BorderStyle.solid,
                      width: 5.0,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/user02.jpg"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getSize(100, context)),
          Container(
            child: Center(
              child: Text(
                "Sahil Shrestha",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Text(
              "Edit Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: getSize(25, context)),
          Container(
              child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.notification_important,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () => {},
              ),
              SizedBox(width: getSize(20, context)),
              Text(
                "Notifcations",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          )),
          Container(
              child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.shop_2_outlined,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () => {},
              ),
              SizedBox(width: getSize(20, context)),
              Text(
                "My orders",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(width: getSize(20, context)),
            ],
          )),
          Container(
              child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () => {},
              ),
              SizedBox(width: getSize(20, context)),
              Text(
                "Account Settings",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          )),
          Container(
              child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.question_mark_sharp,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () => {},
              ),
              SizedBox(width: getSize(20, context)),
              Text(
                "FAQ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          )),
          Container(
              child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.contact_mail_rounded,
                  color: Colors.red,
                  size: 30,
                ),
                onPressed: () => {},
              ),
              SizedBox(width: getSize(20, context)),
              Text(
                "Contact Us",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          )),
        ]),
      ),
    );
  }
}
