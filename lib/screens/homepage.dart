import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agora_trial/constants/constants.dart';
import 'package:flutter_agora_trial/controllers/liveStreamController.dart';
import 'package:flutter_agora_trial/screens/videoCallPage.dart';
import 'package:flutter_agora_trial/screens/liveStreamPage.dart';
import 'package:flutter_agora_trial/widgets/homePageWidget.dart';


class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homepageState();
  }
}

class _homepageState extends State<homepage> {
  TextEditingController chanelName = TextEditingController();

  @override
  void dispose() {
    chanelName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height.value = MediaQuery.of(context).size.height;
    width.value = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height.value,
          width: width.value,
          color: Theme.of(context).backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: height.value * 0.25,
                width: width.value,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Center(
                  child: Text(
                    "Flutter ♥ Agora",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              HomePageCard(
                onTap: () {
                  // print("tapped");
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: SingleChildScrollView(
                          child: Container(
                            height: height.value * 0.23 + 60,
                            width: width.value * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  "Enter the Room Name",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  height: 60.0,
                                  width: width.value * 0.75,
                                  child: TextField(
                                    controller: chanelName,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      hintText: "Enter the Room name",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(color: Colors.grey[600]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(fontSize: 15.0),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    SizedBox(
                                      width: 25.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                        VideoConfController.roomName.value =
                                            chanelName.text;
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                videoCallPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          color: Colors.blue,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.0, vertical: 13.0),
                                        child: Center(
                                          child: Text(
                                            "Join",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontSize: 12.0,
                                                    color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                title: 'VideoCall',
              ),
              SizedBox(
                height: 30.0,
              ),
              HomePageCard(
                title: 'Go Live',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: SingleChildScrollView(
                          child: Container(
                            height: height.value * 0.23 + 60,
                            width: width.value * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  "Create a new Channel",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  height: 60.0,
                                  width: width.value * 0.75,
                                  child: TextField(
                                    controller: chanelName,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      hintText: "Enter the Channel name",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(color: Colors.grey[600]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(fontSize: 15.0),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    SizedBox(
                                      width: 25.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                        LiveStreamController.channelName.value =
                                            chanelName.text;
                                        LiveStreamController.clientRole.value =
                                            ClientRole.Broadcaster;
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                LiveStreamPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          color: Colors.blue,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.0, vertical: 13.0),
                                        child: Center(
                                          child: Text(
                                            "Go Live!!!",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontSize: 12.0,
                                                    color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              HomePageCard(
                title: 'Join Live Stream',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: SingleChildScrollView(
                          child: Container(
                            height: height.value * 0.23 + 60,
                            width: width.value * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  "Enter the Channel Name",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  height: 60.0,
                                  width: width.value * 0.75,
                                  child: TextField(
                                    controller: chanelName,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      hintText: "Enter the Channel name",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(color: Colors.grey[600]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(fontSize: 15.0),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    SizedBox(
                                      width: 25.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                        LiveStreamController.channelName.value =
                                            chanelName.text;
                                        LiveStreamController.clientRole.value =
                                            ClientRole.Audience;
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                LiveStreamPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          color: Colors.blue,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.0, vertical: 13.0),
                                        child: Center(
                                          child: Text(
                                            "Join Live!!!",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5!
                                                .copyWith(
                                                    fontSize: 12.0,
                                                    color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
