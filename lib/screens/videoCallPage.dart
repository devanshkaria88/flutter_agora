import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agora_trial/constants/constants.dart';
import 'package:flutter_agora_trial/controllers/liveStreamController.dart';
import 'package:get/get.dart';

class videoCallPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _videoCallPageState();
  }
}

class _videoCallPageState extends State<videoCallPage> {

  final AgoraClient videoCallClient = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: agoraAppId,
      channelName: VideoConfController.roomName.value,
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );

  @override
  Widget build(BuildContext context) {
    print(VideoConfController.roomName.value);
    return Scaffold(
      body: Stack(
        children: [
          AgoraVideoViewer(
            client: videoCallClient,
            ),
          AgoraVideoButtons(
            client: videoCallClient,
            autoHideButtonTime: 5,
            autoHideButtons: true,
          ),
        ],
      ),
    );
  }
}
